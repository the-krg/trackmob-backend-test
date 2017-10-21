class AbreFecha
  def self.balanceado?(input)
    tipo = ["{}", "[]", "()"]
    input.length.times do
      tipo.each do |k|
        input.gsub!(k, "")
      end
    end
    return input.length == 0
  end
end

# exemplos = ["{{)(}}", "({)}", "[({})]", "{}([])", "{()}[[{}]]"]
# exemplos.each do |ex|
#   copy = ex.dup
#   output = balanceado?(ex) ? "Balanceado!" : "Não balanceado..."
#   puts "#{copy}: #{output} \n"
# end
