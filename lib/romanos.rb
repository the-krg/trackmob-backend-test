class Romans
  def self.transform(input)
    result = ""
    dec = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    rom = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

    dec.length.times do |i|
      while dec[i] <= input
        result += rom[i]
        input -= dec[i]
      end
    end
    result
  end
end
# input = gets.chomp.to_i
# puts transforma(input)
