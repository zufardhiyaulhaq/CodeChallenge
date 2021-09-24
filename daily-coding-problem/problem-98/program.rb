# frozen_string_literal: true

def exist(board, letter)
  row_max = board.length
  column_max = board[0].length

  exist = false
  (0...row_max).each do |row|
    (0...column_max).each do |column|
      next unless letter[0] == board[row][column]

      if dfs(board, letter, row, column, 0)
        exist = true
        break
      end
    end
  end

  exist
end

def dfs(board, letter, row, column, progress)

  return false if board[row][column] != letter[progress]
  return true if progress == letter.length()-1

  row_max = board.length
  column_max = board[0].length

  row_movement = [-1, 1, 0, 0]
  column_movement = [0, 0, -1, 1]

  temp = board[row][column]
  board[row][column] = '#'

  (0...4).each do |direction|
    row_next = row + row_movement[direction]
    column_next = column + column_movement[direction]

    if row_next >= 0 && column_next >=0 && row_next < row_max && column_next < column_max && board[row_next][column_next] == letter[progress+1]
      if dfs(board, letter, row_next, column_next, progress+1)
        return true
      end
    end
  end

  false
end

row = gets.to_i
column = gets.to_i
board = []
(0...row).each do |_|
  board.push(gets.split(' '))
end

test_number = gets.to_i
test_letter = []
(0...test_number).each do |_|
  test_letter.push(gets.chomp)
end

test_letter.each do |letter|
  board_temp = Marshal.load(Marshal.dump(board))
  p(exist(board_temp, letter))
end
