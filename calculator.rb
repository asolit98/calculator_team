puts "Would you like to add or subtract?"
function = gets.chomp.downcase
puts "Enter the first number:"
num_1 = gets.chomp
puts "Enter the second:"
num_2 = gets.chomp

def add(number1, number2)
  return number1.to_i + number2.to_i
end

if function = "add"
  puts add(num_1,num_2)
