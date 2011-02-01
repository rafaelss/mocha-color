require "mocha-color/unexpected_invocation"

class TestUnexpectedInvocation < MiniTest::Unit::TestCase

  def test_to_s
    unexpected_invocation = Mocha::UnexpectedInvocation.new(Object.new, :asdad)
    assert_match(/\n\e\[33munexpected invocation\e\[0m/, unexpected_invocation.to_s)
  end
end
