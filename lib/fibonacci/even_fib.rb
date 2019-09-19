module Fibonacci
  class EvenFibonacci
    def self.even_number_sum(limit = 4_000_000)
      fibonacci_sequence(limit).select {|n| n.even? }.sum
    end

    def self.fibonacci_sequence(limit)
      num1 = 1
      num2 = 1
      result = [num1, num2]

      while num1 + num2 < limit
        add = num1 + num2
        result << add
        num1 = num2
        num2 = add
      end
      result
    end
  end
end
