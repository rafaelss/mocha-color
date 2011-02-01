module Mocha
  class UnexpectedInvocation
    alias :original_to_s :to_s

    def to_s
      color = Test::Unit::Color.new("yellow")
      reset_color = Mocha::Color::RESET_COLOR

      message = "\n%s%s%s" % [ color.escape_sequence, "unexpected invocation", reset_color.escape_sequence ]
      original_to_s.gsub(/unexpected invocation/, message)
    end
  end
end
