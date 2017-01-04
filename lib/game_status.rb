# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], #bottom row
  [0,3,6], #left columns
  [1,4,7], #Middle
  [2,5,8], #right columns
  [0,4,8], #diagonal
  [2,4,6] #diagonal
]

def won(board)
  WIN_COMBINATIONS.detect{|board| board.include?}
end

# def full
# earn
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
