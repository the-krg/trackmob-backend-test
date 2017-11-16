def linha_disponivel?(tabuleiro, lin, col, n)
  for checa_coluna in 0..col
    return false if tabuleiro[[lin, checa_coluna]] == '* '
  end
  1.upto(n) do |j|
    return false if tabuleiro[[lin+j, col+j]] == '* ' || tabuleiro[[lin-j, col-j]] == '* '
    return false if tabuleiro[[lin-j, col+j]] == '* ' || tabuleiro[[lin+j, col-j]] == '* '
  end
  true
end

def n_rainhas?(tabuleiro, coluna, n)
  if coluna == n
    return true #Fim
  end
  for linha in 0..n-1
    if linha_disponivel?(tabuleiro, linha, coluna, n)
      tabuleiro[[linha, coluna]] = '* '
      return true if n_rainhas?(tabuleiro, coluna + 1, n) #Próximo
      tabuleiro[[linha, coluna]] = '- '
    end
  end
  false
end

def gera_tabuleiro(n, tabuleiro)
  for lins in 0..n-1
    for cols in 0..n-1
      tabuleiro[[lins, cols]] = '- '
    end
  end
  tabuleiro
end

tabuleiro = Hash.new

puts "Diga um número(entre 4 e 8):"
n = gets.to_i

gera_tabuleiro(n, tabuleiro)

if n_rainhas?(tabuleiro, 0, n)
  puts tabuleiro.values.join.scan(/......../)
end
