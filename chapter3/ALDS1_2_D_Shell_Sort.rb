n = gets.to_i
sort = []
n.times do |i|
  sort.push(gets.to_i)
end

$count = 0
g_list = [1]

def shell_sort(sort, n, g)
  (0..n-1).step(g) do |i|
    v = sort[i]
    j = i - g
    while j >= 0 and v < sort[j]
      sort[j+g] = sort[j]
      j -= g
      $count += 1
    end
    sort[j+g] = v
  end
end

n.times do |i| 
  tmp = g_list[-1] * 3 + 1
  break if tmp > n 
  g_list.push(tmp)
end

g_list.reverse_each do |step|
  shell_sort(sort, n, step)
end

puts g_list.length
puts g_list.reverse.join(" ")
puts $count
puts sort