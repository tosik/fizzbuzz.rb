require 'fizzbuzz.rb'

class FizzBuzz::Engine
  class ::Numeric
    def fizz?
      self % 3 == 0 && self % 5 != 0
    end

    def buzz?
      self % 3 != 0 && self % 5 == 0
    end

    def fizzbuzz?
      self % 3 == 0 && self % 5 == 0
    end
  end

  def valid_range?(range)
    range.size != 0 && range.first >= 1
  end

  def generate(range)
    raise ArgumentError.new("Invalid range") unless valid_range?(range)
    range.map {|number|
      if number.fizz?
        "Fizz"
      elsif number.buzz?
        "Buzz"
      elsif number.fizzbuzz?
        "Fizz Buzz"
      else
        number
      end
    }
  end
end
