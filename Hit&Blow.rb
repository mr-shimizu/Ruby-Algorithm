N = 4 #桁数
arr = [*1..9]
ans =[]
hit = 0
i = 0 #count times of answer
j = 0 #count index
N.times do
  num = arr[rand(arr.index(arr.max))]
  ans.push(num)
  arr.delete(num)
end
puts "Enter #{N} digits number except 0.\nIf the Number is only correct, it’s Blow.\nIf the number and the digit are correct, it’s Hit."
while hit != N and i  < 8 do
    hit = 0
    blow = 0
    input = gets.chomp
    if input.length == N
      input_arr = input.split("").map(&:to_i)
      input.chars
      ans.each do |a|
        if input_arr[j] == a
          hit += 1
        elsif input_arr.include?(a)
          blow += 1
        end
        j += 1
      end
      puts "#{hit} Hit and #{blow} Blow!"
      i += 1
    else
      puts "#{N} digits only"
    end
  end

  if hit == N and i < 8
    puts "you are correct! The answer is #{ans}. And you tried #{i} times."
  else
    puts "Oh exceed the trial times... The answer is #{ans}."
  end
