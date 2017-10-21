class Tabuleiro
  def self.nqueens(row,n)
    for col in 1..n
      if (coloca(row,col))
        $mat[row]=col
        if row==n
          fim(n)
        else
          nqueens(row+1,n)
        end
      end
    end
    return $tabu.join
  end
  def self.coloca(row2,col2)
    for i in 1..row2-1
      if $mat[i]==col2
        return false
      elsif ($mat[i]-col2).abs==(i-row2).abs
        return false
      end
    end
    return true
  end
  def self.fim(n)
    for i in 1..n
      for j in 1..n
        if $mat[i]==j
          $tabu << '*'
        else
          $tabu << '-'
        end
      end
      $tabu << "\n"
    end
  end
end

$mat = Array.new
$tabu = Array.new
