class StringRepeater
  def initialize(io)
    @io = io
  end
  def run
    @io.puts "Hello. I will repeat a string many times.\nPlease enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    num = get_number
    result = string * num.to_i
    @io.puts "Here is your result:\n#{result}"
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


#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX