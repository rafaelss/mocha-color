require "mocha/expectation"

module Mocha
  class Expectation

    def mocha_inspect
      color = Test::Unit::Color.new("yellow")
      reset_color = Mocha::Color::RESET_COLOR

      count_message = case @invocation_count
      when 0 then "not yet invoked"
      when 1 then "already invoked once"
      when 2 then "already invoked twice"
      else "already invoked #{@invocation_count} times"
      end

      message = "#{@cardinality.mocha_inspect}, "
      message << "%s%s%s" % [ color.escape_sequence, count_message, reset_color.escape_sequence ]
      message << ": "
      message << method_signature
      message << "; #{@ordering_constraints.map { |oc| oc.mocha_inspect }.join("; ")}" unless @ordering_constraints.empty?
      message
    end
  end
end
