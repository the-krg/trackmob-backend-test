def line_available?(board, lin, col, n)
  for check_column in 0..col
    return false if board[[lin, check_column]] == '* '
  end
  1.upto(n) do |j|
    return false if board[[lin+j, col+j]] == '* ' || board[[lin-j, col-j]] == '* '
    return false if board[[lin-j, col+j]] == '* ' || board[[lin+j, col-j]] == '* '
  end
  true
end

def n_queens?(board, column, n)
  return true if column == n
   #Fim
  for line in 0..n-1
    if line_available?(board, line, column, n)
      board[[line, column]] = '* '
      return true if n_queens?(board, column + 1, n) #Próximo
      board[[line, column]] = '- '
    end
  end
  false
end

def generate_board(n, board)
  for lins in 0..n-1
    for cols in 0..n-1
      board[[lins, cols]] = '- '
    end
  end
  board
end

board = Hash.new

puts "Diga um número(entre 4 e 8):"
n = gets.to_i

generate_board(n, board)

if n_queens?(board, 0, n)
  puts board.values.join.scan(/......../)
end
