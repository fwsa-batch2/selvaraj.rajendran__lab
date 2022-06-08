puts "Entre first number"
num1 = gets.chomp().to_f
puts "Entre operator"
op = gets.chomp()
puts "Entre second number"
num2 = gets.chomp().to_f


case op
when "+"
    sum = (num1 + num2)
  puts "your answer for #{num1} #{op} #{num2} = #{sum}"
when "-"
    sum = (num1 - num2)
  puts "your answer for #{num1} #{op} #{num2} = #{sum}"
when "*"
    sum = (num1 * num2)
  puts "your answer for #{num1} #{op} #{num2} = #{sum}"
when "/"
    sum = (num1 / num2)
    puts "your answer for #{num1} #{op} #{num2} = #{sum}"

end


# case op
# when "+"
#   sum = num1 +num2
#    puts ("your answer for "+ num1 + op + num2 +"="+ sum)
# when "-"
#     sum = num1 - num2
#    puts ("your answer for "+ num1 + op + num2 +"="+ sum)
# when "*"
#     sum = num1 *num2
#     puts ("your answer for "+ num1 + op + num2 +"="+ sum)
# when "/"
#     sum = num1/num2
#     puts ("your answer for "+ num1 + op + num2 +"="+ sum)
# end