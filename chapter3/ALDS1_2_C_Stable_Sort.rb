n = gets.to_i
bubble_sort = gets.split()
selection_sort = Array.new(bubble_sort)
start = 1
flag = 1

while flag == 1
  flag = 0
  (start..n-1).reverse_each do |i|
    if bubble_sort[i][1].to_i < bubble_sort[i-1][1].to_i
      bubble_sort[i], bubble_sort[i-1] = bubble_sort[i-1], bubble_sort[i]
      flag = 1
    end
  end
  start += 1
end

puts bubble_sort.join(" ")
puts "Stable"

min_index = 0

n.times do |i|
  min_index = i
  (i..n-1).each do |j|
    min_index = j if selection_sort[min_index][1].to_i > selection_sort[j][1].to_i
  end
  selection_sort[i], selection_sort[min_index] = selection_sort[min_index], selection_sort[i]
end

puts selection_sort.join(" ")
puts selection_sort == bubble_sort ? "Stable" : "Not stable"
