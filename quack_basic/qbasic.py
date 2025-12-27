import sys
import re

# --- Tokenizer ---

class TokenType:
    EOF = 'EOF'
    NUMBER = 'NUMBER'
    STRING = 'STRING'
    IDENTIFIER = 'IDENTIFIER'

    # Keywords
    PRINT = 'PRINT'
    QUACK = 'QUACK'
    LET = 'LET'
    IF = 'IF'
    THEN = 'THEN'
    GOTO = 'GOTO'
    INPUT = 'INPUT'
    END = 'END'
    REM = 'REM'
    NL = 'NL' # Newline

    # Operators
    PLUS = 'PLUS'
    MINUS = 'MINUS'
    STAR = 'STAR'
    SLASH = 'SLASH'
    EQ = 'EQ'
    LT = 'LT'
    GT = 'GT'
    LPAREN = 'LPAREN'
    RPAREN = 'RPAREN'

class Token:
    def __init__(self, type, lexeme, literal, line):
        self.type = type
        self.lexeme = lexeme
        self.literal = literal
        self.line = line

    def __repr__(self):
        return f"{self.type} {self.lexeme} {self.literal}"

class Scanner:
    def __init__(self, source):
        self.source = source
        self.tokens = []
        self.start = 0
        self.current = 0
        self.line = 1

        self.keywords = {
            "PRINT": TokenType.PRINT,
            "QUACK": TokenType.QUACK,
            "LET": TokenType.LET,
            "IF": TokenType.IF,
            "THEN": TokenType.THEN,
            "GOTO": TokenType.GOTO,
            "INPUT": TokenType.INPUT,
            "END": TokenType.END,
            "REM": TokenType.REM,
        }

    def scan_tokens(self):
        while not self.is_at_end():
            self.start = self.current
            self.scan_token()

        self.tokens.append(Token(TokenType.EOF, "", None, self.line))
        return self.tokens

    def is_at_end(self):
        return self.current >= len(self.source)

    def advance(self):
        self.current += 1
        return self.source[self.current - 1]

    def peek(self):
        if self.is_at_end(): return '\0'
        return self.source[self.current]

    def peek_next(self):
        if self.current + 1 >= len(self.source): return '\0'
        return self.source[self.current + 1]

    def add_token(self, type, literal=None):
        text = self.source[self.start:self.current]
        self.tokens.append(Token(type, text, literal, self.line))

    def match(self, expected):
        if self.is_at_end(): return False
        if self.source[self.current] != expected: return False
        self.current += 1
        return True

    def scan_token(self):
        c = self.advance()
        if c == '(': self.add_token(TokenType.LPAREN)
        elif c == ')': self.add_token(TokenType.RPAREN)
        elif c == '+': self.add_token(TokenType.PLUS)
        elif c == '-': self.add_token(TokenType.MINUS)
        elif c == '*': self.add_token(TokenType.STAR)
        elif c == '/': self.add_token(TokenType.SLASH)
        elif c == '=': self.add_token(TokenType.EQ)
        elif c == '<': self.add_token(TokenType.LT)
        elif c == '>': self.add_token(TokenType.GT)
        elif c == ' ' or c == '\r' or c == '\t':
            pass
        elif c == '\n':
            self.line += 1
            self.add_token(TokenType.NL)
        elif c == '"':
            self.string()
        elif c.isdigit():
            self.number()
        elif c.isalpha():
            self.identifier()
        else:
            print(f"Unexpected character at line {self.line}: {c}")

    def string(self):
        while self.peek() != '"' and not self.is_at_end():
            if self.peek() == '\n': self.line += 1
            self.advance()

        if self.is_at_end():
            print("Unterminated string.")
            return

        self.advance() # The closing "
        value = self.source[self.start + 1 : self.current - 1]
        self.add_token(TokenType.STRING, value)

    def number(self):
        while self.peek().isdigit():
            self.advance()

        if self.peek() == '.' and self.peek_next().isdigit():
            self.advance()
            while self.peek().isdigit():
                self.advance()

        value = float(self.source[self.start:self.current])
        self.add_token(TokenType.NUMBER, value)

    def identifier(self):
        while self.peek().isalnum():
            self.advance()

        text = self.source[self.start:self.current].upper()
        type = self.keywords.get(text, TokenType.IDENTIFIER)
        self.add_token(type)

# --- AST Nodes ---

class Stmt:
    pass

class PrintStmt(Stmt):
    def __init__(self, expression):
        self.expression = expression

class LetStmt(Stmt):
    def __init__(self, name, expression):
        self.name = name
        self.expression = expression

class InputStmt(Stmt):
    def __init__(self, name):
        self.name = name

class IfStmt(Stmt):
    def __init__(self, condition, then_branch):
        self.condition = condition
        self.then_branch = then_branch

class GotoStmt(Stmt):
    def __init__(self, line_number):
        self.line_number = line_number

class EndStmt(Stmt):
    pass

class RemStmt(Stmt):
    pass

class Expr:
    pass

class Binary(Expr):
    def __init__(self, left, operator, right):
        self.left = left
        self.operator = operator
        self.right = right

class Literal(Expr):
    def __init__(self, value):
        self.value = value

class Variable(Expr):
    def __init__(self, name):
        self.name = name

class Grouping(Expr):
    def __init__(self, expression):
        self.expression = expression

# --- Parser ---

class Parser:
    def __init__(self, tokens):
        self.tokens = tokens
        self.current = 0

    def parse(self):
        lines = {}
        while not self.is_at_end():
            # Skip newlines at the beginning of parsing a statement
            while self.match(TokenType.NL):
                pass
            if self.is_at_end(): break

            # Expect a line number
            if self.match(TokenType.NUMBER):
                line_num = int(self.previous().literal)
                stmt = self.statement()
                lines[line_num] = stmt
                # Expect newline after statement
                if not self.is_at_end() and not self.check(TokenType.NL):
                     print(f"Error at line {line_num}: Expected newline after statement.")
            else:
                 # consume until newline
                 self.advance()

        return lines

    def statement(self):
        if self.match(TokenType.PRINT) or self.match(TokenType.QUACK):
            return self.print_statement()
        if self.match(TokenType.LET):
            return self.let_statement()
        if self.match(TokenType.IF):
            return self.if_statement()
        if self.match(TokenType.GOTO):
            return self.goto_statement()
        if self.match(TokenType.INPUT):
            return self.input_statement()
        if self.match(TokenType.END):
            return EndStmt()
        if self.match(TokenType.REM):
            return self.rem_statement()

        # Default: Variable assignment without LET? Or just error.
        # Let's support implicit LET if starts with identifier
        if self.check(TokenType.IDENTIFIER):
            return self.let_statement_implicit()

        print(f"Unknown statement at token {self.peek()}")
        self.advance()
        return None

    def print_statement(self):
        expr = self.expression()
        return PrintStmt(expr)

    def rem_statement(self):
        # Consume tokens until newline
        while not self.check(TokenType.NL) and not self.is_at_end():
            self.advance()
        return RemStmt()

    def let_statement(self):
        name = self.consume(TokenType.IDENTIFIER, "Expected variable name.")
        self.consume(TokenType.EQ, "Expected '=' after variable name.")
        value = self.expression()
        return LetStmt(name, value)

    def let_statement_implicit(self):
        name = self.consume(TokenType.IDENTIFIER, "Expected variable name.")
        self.consume(TokenType.EQ, "Expected '=' after variable name.")
        value = self.expression()
        return LetStmt(name, value)

    def if_statement(self):
        condition = self.expression()
        self.consume(TokenType.THEN, "Expected 'THEN' after if condition.")
        # Classic BASIC often allows 'THEN GOTO 20' or 'THEN 20' or 'THEN PRINT...'
        if self.match(TokenType.NUMBER):
             # Implicit GOTO
             line_num = int(self.previous().literal)
             return IfStmt(condition, GotoStmt(line_num))

        then_branch = self.statement()
        return IfStmt(condition, then_branch)

    def goto_statement(self):
        line = self.consume(TokenType.NUMBER, "Expected line number after GOTO.")
        return GotoStmt(int(line.literal))

    def input_statement(self):
        name = self.consume(TokenType.IDENTIFIER, "Expected variable name after INPUT.")
        return InputStmt(name)

    # Expression Parsing (Recursive Descent)

    def expression(self):
        return self.equality()

    def equality(self):
        expr = self.comparison()
        while self.match(TokenType.EQ): # BASIC usually uses = for equality
            operator = self.previous()
            right = self.comparison()
            expr = Binary(expr, operator, right)
        return expr

    def comparison(self):
        expr = self.term()
        while self.match(TokenType.GT, TokenType.LT):
            operator = self.previous()
            right = self.term()
            expr = Binary(expr, operator, right)
        return expr

    def term(self):
        expr = self.factor()
        while self.match(TokenType.MINUS, TokenType.PLUS):
            operator = self.previous()
            right = self.factor()
            expr = Binary(expr, operator, right)
        return expr

    def factor(self):
        expr = self.unary()
        while self.match(TokenType.SLASH, TokenType.STAR):
            operator = self.previous()
            right = self.unary()
            expr = Binary(expr, operator, right)
        return expr

    def unary(self):
        if self.match(TokenType.MINUS):
            operator = self.previous()
            right = self.unary()
            # Represent unary minus as 0 - expr? or specific node?
            # For simplicity, let's just make it a Binary 0 - expr
            return Binary(Literal(0), operator, right)
        return self.primary()

    def primary(self):
        if self.match(TokenType.NUMBER, TokenType.STRING):
            return Literal(self.previous().literal)
        if self.match(TokenType.IDENTIFIER):
            return Variable(self.previous())
        if self.match(TokenType.LPAREN):
            expr = self.expression()
            self.consume(TokenType.RPAREN, "Expected ')' after expression.")
            return Grouping(expr)

        print("Expected expression.")
        raise Exception("Parse Error")

    # Helpers
    def match(self, *types):
        for type in types:
            if self.check(type):
                self.advance()
                return True
        return False

    def check(self, type):
        if self.is_at_end(): return False
        return self.peek().type == type

    def advance(self):
        if not self.is_at_end(): self.current += 1
        return self.previous()

    def is_at_end(self):
        return self.peek().type == TokenType.EOF

    def peek(self):
        return self.tokens[self.current]

    def previous(self):
        return self.tokens[self.current - 1]

    def consume(self, type, message):
        if self.check(type): return self.advance()
        print(message)
        raise Exception(message)

# --- Interpreter ---

class Interpreter:
    def __init__(self):
        self.environment = {}

    def interpret(self, lines):
        if not lines: return

        sorted_lines = sorted(lines.keys())
        pc_index = 0

        while pc_index < len(sorted_lines):
            line_num = sorted_lines[pc_index]
            stmt = lines[line_num]

            try:
                result = self.execute(stmt)

                if isinstance(result, GotoSignal):
                    target = result.line_number
                    if target in sorted_lines:
                        pc_index = sorted_lines.index(target)
                        continue
                    else:
                        print(f"Runtime Error: Line {target} not found.")
                        break
                elif result == "END":
                    break

                pc_index += 1
            except Exception as e:
                print(f"Runtime Error at line {line_num}: {e}")
                break

    def execute(self, stmt):
        if isinstance(stmt, PrintStmt):
            value = self.evaluate(stmt.expression)
            print(value)
        elif isinstance(stmt, LetStmt):
            value = self.evaluate(stmt.expression)
            self.environment[stmt.name.lexeme] = value
        elif isinstance(stmt, InputStmt):
            val = input(f"? ")
            # Try to convert to float
            try:
                val = float(val)
            except ValueError:
                pass # keep as string
            self.environment[stmt.name.lexeme] = val
        elif isinstance(stmt, IfStmt):
            condition = self.evaluate(stmt.condition)
            # Basic truthiness: Any number != 0 is true, True is true
            is_true = False
            if isinstance(condition, bool): is_true = condition
            elif isinstance(condition, (int, float)): is_true = condition != 0

            if is_true:
                return self.execute(stmt.then_branch)
        elif isinstance(stmt, GotoStmt):
            return GotoSignal(stmt.line_number)
        elif isinstance(stmt, EndStmt):
            return "END"
        elif isinstance(stmt, RemStmt):
            pass
        return None

    def evaluate(self, expr):
        if isinstance(expr, Literal):
            return expr.value
        elif isinstance(expr, Variable):
            name = expr.name.lexeme
            if name in self.environment:
                return self.environment[name]
            # print(f"Undefined variable '{name}'.")
            return 0 # Default to 0 in BASIC
        elif isinstance(expr, Grouping):
            return self.evaluate(expr.expression)
        elif isinstance(expr, Binary):
            left = self.evaluate(expr.left)
            right = self.evaluate(expr.right)
            op = expr.operator.type

            if op == TokenType.PLUS:
                # Handle string concatenation or math
                if isinstance(left, str) or isinstance(right, str):
                    return str(left) + str(right)
                return left + right
            elif op == TokenType.MINUS: return left - right
            elif op == TokenType.STAR: return left * right
            elif op == TokenType.SLASH: return left / right
            elif op == TokenType.GT: return left > right
            elif op == TokenType.LT: return left < right
            elif op == TokenType.EQ: return left == right

        return None

class GotoSignal:
    def __init__(self, line_number):
        self.line_number = line_number

# --- Main ---

def run_file(path):
    with open(path, 'r') as f:
        source = f.read()
    run(source)

def run(source):
    scanner = Scanner(source)
    tokens = scanner.scan_tokens()

    # for t in tokens: print(t) # Debug tokens

    parser = Parser(tokens)
    try:
        lines = parser.parse()
        interpreter = Interpreter()
        interpreter.interpret(lines)
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) == 2:
        run_file(sys.argv[1])
    else:
        print("Usage: python qbasic.py [script]")
