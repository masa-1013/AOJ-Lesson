n = gets.to_i
sort = gets.split().map(&:to_i)
min = 1000
count = 0

(n-1).times do |i|
  minIndex = i
  (i..n-1).each do |j|
    minIndex = j if sort[minIndex] > sort[j]
  end
  count += 1 if sort[i] != sort[minIndex]
  sort[i], sort[minIndex] = sort[minIndex], sort[i]
end

puts sort.join(" ")
puts count