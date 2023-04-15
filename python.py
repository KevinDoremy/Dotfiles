# Chess game without Gui or import 

class Board:
    def __init__(self):
        self.board = [
            ['r', 'n', 'b', 'q', 'k', 'b', 'n', 'r'],
            ['p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'],
            [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
            [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
            [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
            [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
            ['P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'],
            ['R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R']
        ]

    def print_board(self):
        for i in range(len(self.board)):
            for j in range(len(self.board[i])):
                print(self.board[i][j], end=' ')
            print() 

    def move(self, start, end):
        self.board[end[0]][end[1]] = self.board[start[0]][start[1]]
        self.board[start[0]][start[1]] = ' '

    def check_move(self, start, end):   
        if self.board[end[0]][end[1]] != ' ':
            return False
        else:
            return True

    def check_king(self, start, end):
        if self.board[end[0]][end[1]] == 'k':
            return True
        else:
            return False
        
    def check_queen(self, start, end):
        if self.board[end[0]][end[1]] == 'q':
            return True
        else:
            return False

    def check_pawn(self, start, end):
        if self.board[end[0]][end[1]] == 'p':
            return True
        else:
            return False
        
    def check_queen(self, start, end):
        if self.board[end[0]][end[1]] == 'q':
            return True
        else:
            return False
        
    def check_rook(self, start, end):
        if self.board[end[0]][end[1]] == 'r':
            return True
        else:
            return False
        
    def check_bishop(self, start, end):
        if self.board[end[0]][end[1]] == 'b':
            return True
        else:
            return False
    
    def check_knight(self, start, end):
        if self.board[end[0]][end[1]] == 'n':
            return True
        else:
            return False
            
    
        