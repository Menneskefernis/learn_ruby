class Timer
  #write your code here
  def initialize
    @seconds = 0
    @minutes = 0
    @hours
  end

  def seconds
    @seconds
  end

  def seconds= (seconds)
    @seconds = seconds
  end

  def time_string
    calc_time
    "#{format_number(@hours)}:#{format_number(@minutes)}:#{format_number(@seconds)}"
  end

  def calc_time
    @hours = @seconds / 3600
    @seconds = @seconds % 3600
    
    @minutes = @seconds / 60
    @seconds = @seconds % 60

  end

  def format_number number
    first_digit = (number / 10).to_s
    second_digit = (number % 10).to_s
    first_digit + second_digit
  end
end

timer = Timer.new

