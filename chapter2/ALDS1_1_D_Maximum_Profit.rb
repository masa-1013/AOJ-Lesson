n = gets.to_i
r = [n]

ans = -1000000000

n.times do |i|
  r[i] = gets.to_i
end

tmp = r[0]

(1..n-1).each do |i|
  ans = [ans, r[i]-tmp].max
  tmp = r[i] if tmp > r[i]
end

puts ans
