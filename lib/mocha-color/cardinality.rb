require "mocha/cardinality"

module Mocha

  class Cardinality

    alias :original_mocha_inspect :mocha_inspect

    def mocha_inspect
      color = Test::Unit::Color.new("yellow")
      reset_color = Mocha::Color::RESET_COLOR

      "%s%s%s" % [color.escape_sequence, original_mocha_inspect, reset_color.escape_sequence ]
    end
  end
end
