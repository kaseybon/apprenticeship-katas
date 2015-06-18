def fizzybuzzy num
  @num = num
  replacements = {3 => "Fizz", 5 => "Buzz"}

  replacements.each do |key, value|
    if num % key == 0
      if @num.is_a? Integer
        @num = value 
      else
        @num << value
      end
    end
  end
  @num
end