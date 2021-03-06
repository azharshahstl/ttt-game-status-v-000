# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    
    if board[win_combination[0]] == "X" && board[win_combination[1]]  == "X" && board[win_combination[2]] =="X" 
      return win_combination
    elsif
      board[win_combination[0]] == "O" && board[win_combination[1]]  == "O" && board[win_combination[2]] == "O"
      return win_combination
    end
  end
  return false
end


def full?(board)
  !(board.include?(nil || " "))
 end

def draw?(board)
    WIN_COMBINATIONS.each do |win_combination|
    
    if board[win_combination[0]] == "X" && board[win_combination[1]]  == "X" && board[win_combination[2]] == "X" && full?(board) == true
      return false
    elsif
    board[win_combination[0]] == "O" && board[win_combination[1]]  == "O" && board[win_combination[2]] == "O" && full?(board) == true
      return false
    else
       if full?(board) == true && won?(board) == false 
      return true
      end
    end
  end
  return false
end

def over?(board)
  if draw?(board) == true || won?(board) != false
    return true
  elsif (board.include?(nil || " "))  
    return false
  end
end


def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
     if board[win_combination[0]] == "X" && board[win_combination[1]]  == "X" && board[win_combination[2]] =="X" 
      return "X"
    elsif  
      board[win_combination[0]] == "O" && board[win_combination[1]]    == "O" && board[win_combination[2]] =="O" 
        return "O"
    else
    end
  end
  return nil
end
