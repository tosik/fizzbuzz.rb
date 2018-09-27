require 'fizzbuzz/engine'
require 'fizzbuzz/presenter'

require 'stringio'

class PresenterTest < MiniTest::Unit::TestCase
  def setup
    @presenter = FizzBuzz::Presenter.new(FizzBuzz::Engine.new)
  end

  def test_correct_output?
    assert_output(correct_text) do
      @presenter.print(1..6)
    end
  end

  def correct_text
  <<EOS
1
2
Fizz
4
Buzz
Fizz
EOS
  end
end

