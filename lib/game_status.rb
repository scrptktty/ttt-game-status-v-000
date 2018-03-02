require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    binding.pry
      # position = board[win_combo[0, 1, 2]] #how to check win_combo against board?
      # if position == position_taken?(board, index)
      #   # return WIN_COMBINATIONS[win_array]
      # else
      #   false
      # end

      # hint -->  .detect and .all
  end
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else won?(board) || !full(board)
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  # won?(board)
end
