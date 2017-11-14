def coloca_rainha(tabuleiro, col, lin, n)
  for linha in lin..4
    if linha_disponivel?(tabuleiro, linha, n)
      for coluna in col..4
        if casa_disponivel?(tabuleiro, linha, coluna, n)
          tabuleiro[[linha, coluna]] = '* '
        else
          tabuleiro[[linha, coluna]] = '- '
        end
      end
      tabuleiro[[linha, coluna]] = "\n"
    else
      for x in tabuleiro.values
        print x
      end
      tabuleiro.clear
      puts "não disponivel"
    end
  end
end

def linha_disponivel?(tabuleiro, linha, n)
  for i in 0..n
    unless casa_disponivel?(tabuleiro, linha, i, n)
      return false
    end
  end
  for x in tabuleiro.values
    print x
  end
  puts "i ala"
  return true
end

def casa_disponivel?(tabuleiro, lin, col, n)
  #checa linha e coluna
    ## for i in 0..n
      ## col += i
  for coluna in 0..n
    if tabuleiro[[lin, coluna]] == '* ' || tabuleiro[[coluna, col]] == '* '
      return false
    end
  end
  #diagonal
  for j in 1..n
    if tabuleiro[[lin+j, col+j]] == '* ' || tabuleiro[[lin-j, col-j]] == '* ' || tabuleiro[[lin-j, col+j]] == '* ' || tabuleiro[[lin+j, col-j]] == '* '
      return false
    end
  end
    ## end
  return true
end

n = gets.chomp.to_i
tabuleiro = Hash.new
# for i in 0..3
#   for linha in 0..n
#     for coluna in 0..n
coloca_rainha(tabuleiro, 0, 0, n)
#     end
#     tabuleiro[[linha, coluna]] = "\n"
#   end
# end
for x in tabuleiro.values
  print x
end
