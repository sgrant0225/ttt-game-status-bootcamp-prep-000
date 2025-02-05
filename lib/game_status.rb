# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]



def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] &&
    board[win_combo[1]] == board[win_combo[2]] &&
    position_taken?(board, win_combo[0])
   end
 end
 
 def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end
  
  def over?(board)
    if won?(board) && !full?(board) || full?(board)
      return true
    end
  end  
  
  def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end