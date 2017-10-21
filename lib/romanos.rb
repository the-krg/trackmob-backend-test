# Dado um número inteiro positivo (por exemplo 42)
# determine o seu numeral romano representado como uma String (ex: "XLII")
#
# Você não pode escrever numerais como IM para 999.
# A Wikipedia define: "Numerais romanos modernos são escritos definindo cada dígito
# separadamente começando com o dígito mais a esquerda e pulando qualquer dígito com o valor de zero."
class Romans
  def self.transforma(input)
    result = ""
    dec = [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 ]
    rom = [ 'M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

    dec.length.times do |i|
      while dec[i]<=input
        result += rom[i]
        input -= dec[i]
      end
    end
    return result
  end
end
# input = gets.chomp.to_i
# puts transforma(input)
