puts "Choose (b)asic, (a)dvanced calculator or (bmi)"
type = gets.chomp



if type == "b"
  puts "Enter 1st number"
  num1 = gets.chomp
  puts "Choose (a)ddition, (m)ultiplication, (d)ivision or (s)ubtraction"
  mode = gets.chomp
  puts "Enter 2nd number"
  num2 = gets.chomp
elsif type == "a"
  puts "Enter 1st number"
  num1 = gets.chomp
  puts "Choose (p)ower of or (s)quare root"
  mode = gets.chomp
  if mode == "p"
  puts "Enter 2nd number"
  num2 = gets.chomp
  end
elsif type == "bmi"
  puts "Choose (m)etric or (i)mperial"
  mode = gets.chomp
  if mode == "m" || mode == "metric"
  puts "Enter your weight in KG"
  num1 = gets.chomp
  puts "Enter your height in Meters"
  num2 = gets.chomp
elsif mode == "i" || mode == "imperial"
  puts "Enter your weight in Pounds"
  num1 = gets.chomp
  puts "Enter your height in Inches"
  num2 = gets.chomp
end
end

if mode == "a" || mode == "addition"
  puts num1.to_f + num2.to_f
elsif mode == "m" || mode == "multiplication"
  puts num1.to_f * num2.to_f
elsif mode == "d" || mode == "division"
  puts num1.to_f / num2.to_f
elsif (mode == "s" || mode == "subtraction") && type == "b"
  puts num1.to_f - num2.to_f
elsif mode == "p" || mode == "power"
  puts num1.to_f ** num2.to_f
elsif (mode == "s" || mode == "square root") && type == "a"
  puts Math.sqrt(num1.to_f)
elsif (mode == "m" || mode == "metric") && type == "bmi"
  puts num1.to_f / (num2.to_f*num2.to_f)
elsif mode == "i" || mode == "imperial"
  puts num1.to_f / (num2.to_f*num2.to_f) * 703
else
  puts "error"
end
