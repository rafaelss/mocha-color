require "mocha-color/cardinality"
require "mocha-color/expectation"
require "mocha-color/mockery"
require "test/unit/color"

module Mocha
  module Color

    RESET_COLOR = Test::Unit::Color.new("reset")
  end
end
