require 'fizzbuzz/engine'

class EngineTest < MiniTest::Unit::TestCase
  def setup
    @engine = FizzBuzz::Engine.new
  end

  def test_correct_output_generated_when_small_range?
    generated = @engine.generate(1..20)

    assert_equal generated.size, 20
    assert_equal generated, [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8,
                             "Fizz", "Buzz", 11, "Fizz", 13, 14,
                             "Fizz Buzz", 16, 17, "Fizz", 19, "Buzz"]
  end

  def test_correct_output_when_enough_length?
    generated = @engine.generate(1..100000)

    assert_equal generated.size, 100000
    assert_equal generated[99999], "Buzz"
    assert_equal generated[99992], "Fizz"
    assert_equal generated[99991], 99992
  end

  def test_correct?
    assert_equal @engine.generate(1..1), [1]
    assert_equal @engine.generate(5..5), ["Buzz"]
  end

  def test_incorrect_arguments?
    assert_raises(ArgumentError) { @engine.generate(0..0) }
    assert_raises(ArgumentError) { @engine.generate(5..0) }
    assert_raises(ArgumentError) { @engine.generate(1..0) }
    assert_raises(ArgumentError) { @engine.generate(5..2) }
  end

  def test_range_validator
    assert @engine.valid_range?(1..1000)
    assert !@engine.valid_range?(0..1000)
    assert !@engine.valid_range?(0..0)
    assert !@engine.valid_range?(1..0)
    assert !@engine.valid_range?(1000..500)
  end
end
