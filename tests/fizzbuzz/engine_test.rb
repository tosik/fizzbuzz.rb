require 'minitest/autorun'

Minitest::Unit.autorun

class EngineTest < MiniTest::Unit::TestCase
  def setup
  end

  def test_foo
    assert_equal "foo", "bar"
  end
end
