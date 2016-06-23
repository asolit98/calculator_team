x = ""
def first_question
  puts "Do you want to add, subtract, multiply, divide, or use exponents."
  x = gets.chomp
  if x == "add"
      addition
  elsif x == "subtract"
      subtraction
  elsif x == "multiply"
      multiplication
  elsif x == "divide"
      division
    elsif x == "use exponents"
      exponents
  else
    first_question
  end
end

def addition
  puts "How many numbers do you want to add?"
  a = gets.chomp.to_i
  b = a
  add_array = []
  while a > 0
  puts "Give your #{b - (a - 1)} number."
  number = gets.chomp.to_i
  add_array.push(number)
  result = 0
  a = a - 1
  end
  for i in 1..add_array.length do
    result = result + add_array[i - 1].to_f
  end
  puts result
end

def subtraction
  puts "How many numbers do you want to subtract?"
  a = gets.chomp.to_i
  b = a
  subtract_array = []
  while a > 0
  puts "Give your #{b - (a - 1)} number."
  number = gets.chomp.to_i
  subtract_array.push(number)
  result = subtract_array[0]
  a = a - 1
  end
  for i in 2..subtract_array.length do
    result = result - subtract_array[i - 1].to_f
  end
  puts result
end

def multiplication
  puts "How many numbers do you want to multiply?"
  a = gets.chomp.to_i
  b = a
  multiply_array = []
  while a > 0
  puts "Give your #{b - (a - 1)} number."
  number = gets.chomp.to_i
  multiply_array.push(number)
  result = multiply_array[0]
  a = a - 1
  end
  for i in 2..multiply_array.length do
    result = result * multiply_array[i - 1].to_f
  end
  puts result
end

def division
  puts "How many numbers do you want to divide?"
  a = gets.chomp.to_i
  b = a
  divide_array = []
  while a > 0
  puts "Give your #{b - (a - 1)} number."
  number = gets.chomp.to_i
  divide_array.push(number)
  result = divide_array[0]
  a = a - 1
  end
  for i in 2..divide_array.length do
    result = result / divide_array[i - 1].to_f
  end
  puts "The answer is #{result}"
end

def exponents
  puts "How many numbers do you want to raise to the powers of each other?"
  a = gets.chomp.to_i
  b = a
  exponent_array = []
  while a > 0
  puts "Give your #{b - (a - 1)} number."
  number = gets.chomp.to_i
  exponent_array.push(number)
  result = exponent_array[0]
  a = a - 1
  end
  for i in 2..exponent_array.length do
    result = result ** exponent_array[i - 1].to_f
  end
  puts "The answer is #{result}"
end

first_question
