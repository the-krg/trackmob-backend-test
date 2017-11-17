def line_available?(board, lin, col, n)
  col.times do |check_column|
    return false if board[[lin, check_column]] == '* '
  end

  1.upto(n) do |j|
    return false if board[[lin+j, col+j]] == '* ' || board[[lin-j, col-j]] == '* '
    return false if board[[lin-j, col+j]] == '* ' || board[[lin+j, col-j]] == '* '
  end

  true
end

def n_queens?(board, column, n)
  return true if column == n  #Fim
  n.times do |line|
    if line_available?(board, line, column, n)
      board[[line, column]] = '* '
      return true if n_queens?(board, column + 1, n) #Próximo
      board[[line, column]] = '- '
    end
  end

  false
end

def generate_board(n, board)
# ----------> nao usar for
  n.times do |lins|
    n.times do |cols|
      board[[lins, cols]] = '- '
    end
  end#                ----------> ainda assim, uso de 2 loops
  board
end

board = Hash.new

puts "Diga um número(entre 4 e 8):"
n = gets.to_i

dots = ""
n.times do
  dots << ".."
end

generate_board(n, board)
if n.between?(4, 8) 
  if n_queens?(board, 0, n)
    puts board.values.join.scan(/#{dots}/)
  end
else
  puts "Valor digitado inválido."
end




