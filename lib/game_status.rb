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

# def won?(board)
#   WIN_COMBINATIONS.all?{|index| board[index]=="X"} || {|index| board[index] == "O"}
# end
# def won?(board)
#   WIN_COMBINATIONS.detect {|c| c.all?{|p| board[p]=="X"} || c.all?{|p| board[p]=="O"}}
# end
# def won?(board)
#    WIN_COMBINATIONS.detect do |win_combo|
#      combo_1 = win_combo[0]
#      combo_2 = win_combo[1]
#      combo_3 = win_combo[2]
#
#      position_1 = board[combo_1]
#      position_2 = board[combo_2]
#      position_3 = board[combo_3]
#    end
# end
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
