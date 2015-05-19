def add(first_num, second_num)
  puts first_num + second_num
end

def subtract(first_num, second_num)
  puts first_num - second_num
end

def multiply(first_num, second_num)
  puts first_num * second_num
end

def divide(first_num, second_num)
  puts first_num / second_num
end

def root(first_num)
  puts Math.sqrt(first_num)
end

def power(first_num, power)
  puts first_num**power
end


def basic_calculator
  puts "Great, please enter your first number"
  first_num = gets.to_i
  puts "Please enter what calculation you would like to do? ('+', '-', '/' or '*')"
  basic_function = gets.chomp
  puts  "What's your second number?"
  second_num = gets.to_i
  case basic_function
  when '+'
    add(first_num, second_num)
  when '-'
    subtract(first_num, second_num)
  when '*'
    multiply(first_num, second_num)
  when '/'
    divide(first_num, second_num)
  else
    puts "I'm sorry, I did not understand #{basic_function}"
  end
  menu
end

def advanced_calculator
  puts "Would you like to calculate a square root or to the power of? ('root' or 'power')"
  advanced_function = gets.chomp
  if advanced_function == 'root'
    puts "Please enter your number:"
    first_num = gets.to_i
    root(first_num)
  elsif advanced_function == 'power'
    puts "Please enter your number:"
    first_num = gets.to_i
    puts "Please enter the power"
    power = gets.to_i
    power(first_num, power)
  end
  menu
end

def bmi_calculator
  puts "What's your height in meters?"
  height = gets.to_f
  puts "What's your weight in kgs?"
  weight = gets.to_f
  bmi = weight / (height**2.0)
  puts "You're BMI is #{bmi}"
  menu
end

def mortgage_calculator
  puts "Enter the amount you are looking to borrow:"
  loan = gets.to_f
  puts "What's the interest your bank is charging?"
  interest = gets.to_f
  puts "How long are you looking to borrow for? (months)"
  num_payments = gets.to_f
  interest = interest / 1200
  numerator = interest * loan
  denominator = 1 - (1 + interest)**-num_payments
  payment = numerator / denominator
  puts "You're monthly payment will be £#{payment}"
end

def travel_calculator
  puts "Distance in miles:"
  distance = gets.to_f
  puts "What's your car's fuel efficiency? (mpg)"
  efficiency = gets.to_f
  puts "What's your cost per gallon?"
  cost = gets.to_f
  puts "What's the speed you are intending to travel at?"
  speed = gets.to_f
  time = distance / speed
  if speed > 60
    effiency = efficiency - ((speed - 60) * 2)
  end
    trip_cost = distance / efficiency * cost
  puts "Your trip will take #{time} hours and cost $#{trip_cost}."
end

def menu 
  puts "Would you like to use (b)asic, (a)dvanced, (bmi), (mortgage) or (travel) calculator?"
  calculator_type = gets.chomp
  case calculator_type
  when 'b'
    basic_calculator
  when 'a'
    advanced_calculator
  when 'bmi'
    bmi_calculator
  when 'mortgage'
    mortgage_calculator
  when 'travel'
    travel_calculator
  else 
    puts "I did not understand this.."
    puts "Would you like to use (b)asic and (a)dvanced calculator?"
    calculator_type = gets.chomp.downcase
  end
end

menu









