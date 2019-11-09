n, q = gets.split().map(&:to_i)
queue = []

class Pro
  attr_accessor :name, :time

  def initialize(name, time)
    @name = name
    @time = time
  end
end

n.times do 
  name, time = gets.split()
  process = Pro.new(name, time.to_i)
  queue.push(process)
end

process_times = 0;

while queue.size > 0
  process = queue.shift
  if process.time <= q
    process_times += process.time
    puts "#{process.name} #{process_times}"
  else
    process_times += q
    process.time -= q
    queue.push(process)
  end
end

