# puts "Hello World"

# Math
# a = 3 ** 2
# b = 2 ** 100
# c = Math.sqrt(a+b);
# puts a
# puts b
# puts c

=begin
변수
$   static
$$  
[UPPER_CASE] Const
:   Symbol
=end

#function
# def test(name)
#     puts "hello #{name}"
# end
# test("심형관")
# test "심형관"

# class
class Greeter
    def initialize(name = "World")
        @name = name
    end
    def say_hi
        if @name.respond_to?("each")
            @name.each do |name|
                puts "Hello #{name}"
            end
        else
            puts "Hi #{@name}"
        end
    end
    def say_bye
        puts "Bye #{@name}"
    end
end

g = Greeter.new("심형관")
g.say_hi
g.say_bye

# 상속 메서드
# puts Greeter.instance_methods

puts g.respond_to?("say_hi")

class Greeter
    attr_accessor :name
end

g.name = "Xxings"
g.say_hi

g.name = ["심형관","Xxings"]
g.say_hi