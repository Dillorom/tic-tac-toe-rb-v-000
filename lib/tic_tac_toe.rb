
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, player_token)
  board[position] = player_token
  end
  move(board, 0, "O")
  move(board, 8, "X")

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] =- "O"
    true
  end
end

def valid_move?(board, index)
 if !position_taken?(board, index) && index.between?(0,8)
    return true
 end
end

def turn(board)
  puts "Please enter 1-9:"
  users_input=gets.strip
  index = input_to_index(users_input)
  if valid_move?(board, index)
    move(board, index, player_character ="X")
    display_board(board)
  else turn(board)
  end

end

def turn_count(board)
  counter = 0
  if turn(board).count
    counter+=1
  end
end
