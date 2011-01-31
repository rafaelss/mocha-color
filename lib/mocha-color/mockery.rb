require "mocha/mockery"

module Mocha
  class Mockery

    def mocha_inspect
      unsatisfied_color = Test::Unit::Color.new("red", :foreground => false) + Test::Unit::Color.new("white")
      satisfied_color = Test::Unit::Color.new("green", :foreground => false) + Test::Unit::Color.new("white")
      reset_color = Mocha::Color::RESET_COLOR

      message = ""
      message << "\n%s%s%s" % [ unsatisfied_color.escape_sequence, "unsatisfied expectations:", reset_color.escape_sequence ]
      message << "\n- #{unsatisfied_expectations.map { |e| e.mocha_inspect }.join("\n- ")}\n" unless unsatisfied_expectations.empty?
      message << "\n%s%s%s" % [ satisfied_color.escape_sequence, "satisfied expectations:", reset_color.escape_sequence ]
      message << "\n- #{satisfied_expectations.map { |e| e.mocha_inspect }.join("\n- ")}\n" unless satisfied_expectations.empty?
      message << "states:\n- #{state_machines.map { |sm| sm.mocha_inspect }.join("\n- ")}" unless state_machines.empty?
      message
    end
  end
end
