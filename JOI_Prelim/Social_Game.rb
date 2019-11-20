A, B, C = gets.chomp.split().map(&:to_i)

sum_coin = 0
time = 0

while sum_coin < C
  time += 1
  sum_coin += A
  if time % 7 == 0
    sum_coin += B
  end
end

puts time