require "mocha-color/cardinality"

class TestCardinality < MiniTest::Unit::TestCase

  def test_should_describe_cardinality
    assert_equal "\e[33mallowed any number of times\e[0m", Mocha::Cardinality.at_least(0).mocha_inspect
  end
end
