N = gets.to_i
X = gets.split().map(&:to_i)
M = gets.to_i
A = gets.split().map(&:to_i)

A.each do |i|
  next_position = X[i-1] + 1
  next if X.include?(next_position) || next_position > 2019
  X[i-1] = next_position
end

X.each do |i|
  puts i
end