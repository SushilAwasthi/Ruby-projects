#using case
#   print "Enter the calculation you want to perform:"
#   calculation = gets.chomp
#   print "enter first number:"
#   num1 = gets.chomp.to_i
#   print "enter second number:"
#   num2 = gets.chomp.to_i

#   case calculation
#   when "add"
#     puts num1 + num2
#   when "subtract"
#     puts num1-num2
#   when "multiply"
#     puts num1*num2
#   when "division"
#     puts num1 / num2
# end

class Calculator
  def add(num1,num2)
    @num1 = num1
    @num2 = num2
   puts @sum = @num1 + @num2
  end

  def sub(num1,num2)
    @num1 = num1
    @num2 = num2
    puts @difference = @num1 - @num2
  end
  def mul(num1,num2)
    @num1 = num1
    @num2 = num2
    puts @multiply = @num1 * @num2
  end
  def div(num1,num2)
    @num1 = num1
    @num2 = num2
    puts @division = @num1 / @num2
  end
 
end
  calc = Calculator.new

  puts "Select a method: \nType 'add' for addition \n \nType 'sub' for subtraction
  \nType 'mul' for multiplication\nType 'div' for divisionS"  
  method = gets.chomp

  puts "enter first number:"
  num1 = gets.chomp.to_i

  puts "enter second number:"
  num2 = gets.chomp.to_i

  if method == "add"
     calc.add(num1,num2)
  elsif method == "sub"
     calc.sub(num1,num2)
  elsif method == "mul"
     calc.mul(num1,num2)
  elsif method == "div"
     calc.div(num1,num2)
  else
    puts "Invalid method"
  end



