require 'net/http'
require 'json'
require 'rubygems'
require 'open-uri'
def calculator
puts "Type in an expression to calculate, or type \"help\" for some help."
tocalculate = gets.chomp
if tocalculate.downcase.include? "help"
puts "Calculate numbers with addition, subtraction, multiplication, and divison:"
puts "4+4-1 returns 7, 9*2 returns 18, and 8/2 returns 4."
sleep 4
puts ""
puts "You can also use special functions:"
puts "2^2 returns 4, 7^2 returns 49, and 2+sqrt(4) returns 4."
sleep 3
puts ""
puts "Type \"Go\" when you're ready to proceed."
go = gets.chomp
if go.upcase == "GO"
  calculator
end
else
storedtocalculate = tocalculate
# below, encoding for the Calcatraz API.
tocalculate = tocalculate.gsub("+", "%2B")
tocalculate = tocalculate.gsub("x", "%2A")
tocalculate = tocalculate.gsub("*", "%2A")
tocalculate = tocalculate.gsub("/", "%2F")
url = URI("https://www.calcatraz.com/calculator/api?c='#{tocalculate}")
uri = URI(url)
response = Net::HTTP.get(uri)
response = response.gsub(" ", "")
if response == ""
  response = "≤0"
end
puts "#{storedtocalculate} = #{response}."
sleep 1
puts "Want to go again?"
yesorno = gets.chomp
if yesorno.include? "y"
  sleep 1
  puts ""
  calculator
else
end
end
end
calculator
