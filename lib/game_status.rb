# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #Middle
  [2,5,8], #right column
  [0,4,8], #diagonal
  [2,4,6]  #diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
	  if combo.all? {|index| board[index]=="O"} || combo.all? {|index| board[index]=="X"}
      return combo
	  else
 	    false
	  end
  end
  false
end

def full?(board)
  if board.any? { |element| element == " "}
    return false
  else
    return true
  end
end

def draw(board)
  if {full?(board) == true}
    if {won?(board) == false}
      return true
    end
  return true
  end
end
#
# def over
#
# end
#
# def winner
#
# end
