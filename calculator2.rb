puts "Would you like to add, subtract, multiply, divide, or powers?"
function = gets.chomp
puts "Enter the first number:"
num_1 = gets.chomp
puts "Enter the second:"
num_2 = gets.chomp

def add (number1, number2)
  return number1.to_f + number2.to_f
end

def subtract (number1, number2)
  number3 = number1.to_f
  number4 = number2.to_f
  return number3 - number4
end

def multiply (number1, number2)
  return number1.to_f * number2.to_f
end

def divide (number1, number2)
  return number1.to_f/number2.to_f
end


def exponent (number1,number2)
  return (number1.to_f)**(number2.to_f)
end

if function == "add"
  puts add(num_1,num_2)
elsif function == "subtract"
  puts subtract(num_1,num_2)
elsif function == "multiply"
  puts multiply(num_1, num_2)
elsif function == "divide"
  puts divide(num_1, num_2)
  if num_2 == 0
    puts "Error - you cannot divide by zero"
  end
else
  puts exponent(num_1,num_2)
end


#tip calc
puts "Enter your bill:"
cost = gets.chomp
puts "How much tip would you like to give?"
percent = gets.chomp

def tip (bill, tip)
  puts "Your tip is:"
  tip2 = tip.to_f*bill.to_f
  puts tip2
  puts "Your total cost is:"
  total = tip2.to_f + bill.to_f
  puts total
end

tip(cost, percent)
