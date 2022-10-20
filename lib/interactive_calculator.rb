class InteractiveCalculator
  def initialize(io)
    @io = io
  end
  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    num1 =  get_number
    @io.puts "Please enter another number"
    num2 =  get_number
    result = num1.to_i - num2.to_i
    @io.puts "Here is your result:\n#{num1} - #{num2} = #{result.to_s}"
  end
  
  def get_number
    num = @io.gets.chomp
    fail "Not a number" if !is_number?(num)
    num
  end

  def is_number?(num)
    return true if num.to_s == num.to_i.to_s
    false
  end
end


#interactive_calculator = InteractiveCalculator.new(Kernel)
#interactive_calculator.run
# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1