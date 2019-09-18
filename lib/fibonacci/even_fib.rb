module Fibonacci
  class EvenFibonacci
    attr_accessor :limit, :num1, :num2, :result

    def initialize(limit = 4_000_000)
      @limit = limit
      @num1 = 1
      @num2 = 1
      @result = [@num1, @num2]
    end

    def even_number_sum
      fibonacci_sequence
      @result.select {|n| n.even? }.inject {|sum, n| sum + n}
    end

    def fibonacci_sequence
      while @num1 + @num2 < @limit
        add = @num1 + @num2
        @result << add
        @num1 = @num2
        @num2 = add
      end
      @result
    end
  end
end