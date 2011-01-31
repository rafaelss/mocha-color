require "mocha-color/mockery"

class TestMockery < MiniTest::Unit::TestCase

  def test_mocha_inspect
    mockery = Mocha::Mockery.instance
    assert_match(/\e\[41;37munsatisfied expectations:\e\[0m\n\e\[42;37msatisfied expectations:\e\[0m/, mockery.mocha_inspect)
  end
end
