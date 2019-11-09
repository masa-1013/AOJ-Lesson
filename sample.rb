class Hello
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    puts "hello #{@name}"
  end
end

Hello.new("taro").hello