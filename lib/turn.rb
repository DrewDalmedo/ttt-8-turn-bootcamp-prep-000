def display_board(board)
  dashed_line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dashed_line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dashed_line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if ((board[index] == "X") || (board[index] == "O"))
    return true
  end

  return false
end

def valid_move?(board, index)
  if ((index > 8) || (index < 0))
    return false
  elsif (position_taken?(board, index))
    return false
  end

  return true
end

def move(board, index, char)
  if (valid_move?(board, index))
    board[index] = char
    return true
  end

  return false
end

def turn(board)
  puts "Please enter 1-9:"
  input = (gets.strip).to_i
  move(board, input, "X")
end
