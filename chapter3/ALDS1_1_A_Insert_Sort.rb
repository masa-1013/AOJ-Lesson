n = gets.to_i
array = gets.split().map(&:to_i)

n.times do |i|
  v = array[i]
  j = i - 1
  while j >= 0 and array[j] > v
    array[j+1] = array[j]
    j -= 1
  end
  array[j+1] = v
  puts array.join(" ")
end
