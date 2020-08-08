str = "AbC"
str.upcase!()
puts str
str.downcase!()
puts str

puts 2**1_000

a, b = 10, 30 
result = []
result.push(a+b)
result.push(a<<b)
result.push(a.to_s(2) + "/" + b.to_s(2))
result.push(a&b) #not True/False -> bin
result.push(a**b)
puts result

# 반복문
6.times.each{ |n| n.to_s(2)}
# 이 방식 재미있네 ( key -> key.to_s(2) )
# Block Lookup Table
binary_table = Hash.new{ |h, i| h[i] = i.to_s(2) }
puts binary_table
puts binary_table[3]

for i in 0..10
	if(i > 5)
		puts '#'*(10-i)
	else
		puts '#'*i
	end
end

# input
# input = gets.chomp()
# puts input

# Array
arr = Array.new(5, 'asdf')
puts [... arr]
puts "#{arr}"

for data in arr 
    puts data
end

# hash
hash = {1=>2, 2=>3}
puts hash

hash = Hash.new
puts hash

# iterator
# Collections - Array, Hash
hash = Hash.new
hash[1] = 'value1'
hash[2] = 'value2'
hash.each{|key,value| puts "#{key} => #{value}"}
#Return Array
keySet = hash.collect{|key,value| key}
puts "#{keySet}"

=begin
Block 
 yield
=end
# 메소드
def my_method
	yield("test", 6)
end
# 블록 - 편하게 커링 처럼 생각
my_method do |name, age|
	puts "#{name} is #{age} years old"
end

def my_map(array)
    new_array = []
    for element in array
      new_array.push yield element
    end
    puts "#{new_array}"
end

my_map([1, 2, 3]) do |number|
    number * 2
end

class Note
    attr_accessor :note
    def initialize(note=nil)
      @note = note
      puts "@note is #{@note}"
    end
    def self.create
      self.connect
      note = new(yield)
      note.write
      self.disconnect
    end
    def write
      puts "Writing \"#{@note}\" to the database."
    end
  private
    def self.connect
      puts "Connecting to the database..."
    end
    def self.disconnect
      puts "Disconnecting from the database..."
    end
  end
  Note.create { "Foo" }

  class Fixnum
    def to_proc
      Proc.new do |obj, *args|
        obj % self == 0
      end
    end
  end
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select(&3)
  puts numbers

  #Module
puts(Math.sqrt(25))
puts(Math::PI)

#data/cafe.rb
module Cafe
	module_function()
	def show_menu(beverage)
		puts "Menu"
		beverage.each {|name, price| puts "#{name}\t#{price}"}
	end
	def show_price(beverage, select)
		beverage.each do |name, price|
			if select == name
				return "#{price}원 입니다"
			end
		end
		return "그런 음료는 판매하지 않습니다"
	end
end

#main.rb
# require './data/cafe'

beverage = {'coke' => 3000, 'juice' => 4000, 'tea' => 6000, 'coffee' => 5000}

Cafe.show_menu(beverage)
# select = gets.chomp()
# puts Cafe.show_price(beverage, select)

# OPP
# @ : 인스턴스변수 /  @@ : 클래스변수

# inheritance ( < )
class Calculator
    def initialize(num1, num2)
        @Cal_num1 = num1
        @Cal_num2 = num2
    end
    def add()
        return @Cal_num1+@Cal_num2
    end
end

class Cal_Sub < Calculator
	def sub()
		return @Cal_num1-@Cal_num2
	end
end

class Cal_Mul < Cal_Sub
	def mul()
		return @Cal_num1*@Cal_num2
	end
end

cal_2 = Cal_Mul.new(30, 5)
puts cal_2.add()
puts cal_2.sub()
puts cal_2.mul()

#Overidding - 그대로
#super

# mixins
# inclue
module Func_A
	def color
		puts "switch colors"
	end
end
module Func_B
	def flicker
		puts "flicker light"
	end
end
class Lamp
	include Func_A, Func_B
	def light
		puts "turn on the light"
	end
end

my_lamp = Lamp.new()
my_lamp.light
my_lamp.color
my_lamp.flicker

class Test
    # 기본값은 public입니다.
    def identifier
      99
    end
  
    def ==(other)
      identifier == other.identifier
    end
  end
  
  t1 = Test.new  # => #<Test:0x34ab50>
  t2 = Test.new  # => #<Test:0x342784>
  puts t1 == t2       # => true
  
  # 이제 `identifier'를 protected로 만들지만 protected가 다른
  # 객체에서의 참조를 허용하기 때문에 여전히 동작합니다.
  
  class Test
    protected :identifier
  end
  
  puts t1 == t2  # => true
  
  # 이제 `identifier'을 private으로 만듭니다.
  
  class Test
    private :identifier
  end
  
#   puts t1 == t2
  # NoMethodError: private method `identifier' called for #<Test:0x342784>

#   블록은 객체, 다만 아직 모를 뿐
#   블록(사실은 클로저)은 표준 라이브러리에서 매우 많이 사용되고 있습니다. 블록을 호출하려면, yield를 사용하거나 특별한 인자를 붙여 Proc으로 만들 수 있습니다.
  def block(&the_block)
    # Inside here, the_block is the block passed to the method
    the_block # return the block
  end
  adder = block { |a, b| a + b }
  # adder는 이제 Proc 객체입니다.
  puts adder.class # => Proc