class Calci

puts "Enter a number"
num1 = gets.to_f
puts "Enter another number"
num2 = gets.to_f

puts "choose operation \n 1 to add \n 2 to subtract \n 3 to multiply \n 4 for division"

num_operator = gets.to_i

if num_operator == 1 
   puts num1 +num2
elsif num_operator == 2
    puts num1 - num2
    elsif num_operator == 3 
        puts num1*num2
        elsif num_operator == 4
            puts num1/num2
        else
            puts "unable to do the opertaion please choose from thr give opetor"
end
    

end
 # def add(a, b)
    #     a+b   
    # end
    
    #  def sub(a, b)
    #     a-b      
    #  end

    # def multiply(a, b)
    # a*b
    # end

    # def divide(a,b)
    #     a/b
    # end 
