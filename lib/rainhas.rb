class Tabuleiro
    def nqueens(row,n)
        for col in 1..n            # de 1 até o numero definido faça...
            if (coloca(row,col))
                $mat[row]=col
                if row==n
                    fim(n)
                else
                    nqueens(row+1,n)
                end
            end
        end
    end
    def coloca(row2,col2)
        for i in 1..row2-1
            if $mat[i]==col2
                return false
            elsif ($mat[i]-col2).abs==(i-row2).abs
                return false
            end
        end
        return true
    end
    def fim(n)
        for i in 1..n
            for j in 1..n
                if $mat[i]==j
                    print '* '
                else
                    print '- '
                end
            end
            print "\n"
        end
        print "\n"
    end
end
########COMECE AQUI vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv ##########
$mat = Array.new  #mat será o tabuleiro, ele é uma variável global
n=0
while n<4  #loop até que n seja maior que 3
    puts "Qual o valor de N? ( Deve ser maior que 3 )"
    n = gets.chomp.to_i
end
jogo = Tabuleiro.new
jogo.nqueens(1,n)  #chamada da função, vá para o topo
return 0
