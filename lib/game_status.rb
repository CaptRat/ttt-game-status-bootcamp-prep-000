# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left columns
  [1,4,7], #Middle
  [2,5,8], #right columns
  [0,4,8], #diagonal
  [2,4,6]  #diagonal
]
# Track whose move it is: set up counter (1, 3, 5, 7 moves are X; 2, 4, 6 are O)
# board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
def won?(board)
   WIN_COMBINATIONS.detect(board[index]= "X")
   board.detect
end

# def full
# board.select{|token| token.is_a?"X"}
# end
#
# def draw
#
# end
#
# def over
#
# end
#
# def winner
#
# end
