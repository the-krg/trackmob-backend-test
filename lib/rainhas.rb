# class Tabuleiro
def nqueens(matriz, linha, n)
  for linha in 1..n
    if pode_colocar(linha, coluna)
      matriz[linha] = coluna
      if row == n
        fim(n)
      else
        nqueens(matriz, linha + 1, n)
      end
    end
  end
  return tabuleiro.join
end

def pode_colocar?(linha, coluna, matriz)
  for i in 1..linha - 1
    if matriz[i] == coluna
      return false
    elsif (matriz[i] - col2).abs == (i - row2).abs
      return false
    end
  end
  return true
end

def fim(n, matriz)
  for i in 1..n
    for j in 1..n
      if matriz[i] == j
        tabuleiro << '* '
      else
        tabuleiro << '- '
      end
    end
    tabuleiro << "\n"
  end
  tabuleiro << "\n"
end
# end

matriz = Array.new
tabuleiro = Array.new

n = gets.chomp.to_i
a = nqueens(1,n)
puts a
