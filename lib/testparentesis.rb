# def verify(input)
#   kind = ["{}", "[]", "()"]
#   times = (input.length-1)
#
#   times.times do |i|
#     substring = input[i.. i+1]
#
#     if kind.include?(substring)
#       puts input
#       puts "SUB: #{substring}"
#       input.repla!(i)
#       puts input
#       break
#     end
#   end
#
# end
#
#
# verify("({}){}")
