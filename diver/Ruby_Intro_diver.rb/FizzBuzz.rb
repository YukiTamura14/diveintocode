def fizz_buzz(number)
  if number % 15 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end
# (number % 15 == 0)? 'FizzBuzz' : (number % 3 == 0)? 'Fizz': 'Buzz'
loop do
  puts '0以外の数字を入力してください'
  input = gets.to_s.chomp.to_i
  p fizz_buzz(input) unless input.zero?
end
