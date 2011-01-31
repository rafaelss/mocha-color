require "mocha-color/expectation"

class TestExpectation < MiniTest::Unit::TestCase

  def test_mocha_inspect
    expectation = Mocha::Expectation.new(nil, :expected_method).with(1, 2, 3).at_least_once
    assert_match(/\e\[33mexpected at least once\e\[0m, \e\[33mnot yet invoked\e\[0m/i, expectation.mocha_inspect)

    expectation = Mocha::Expectation.new(nil, :expected_method).times(2)
    1.times { expectation.invoke }
    assert_match(/\e\[33mexpected exactly twice\e\[0m, \e\[33malready invoked once\e\[0m/i, expectation.mocha_inspect)
  end
end
