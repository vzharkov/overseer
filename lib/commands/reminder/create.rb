# frozen_string_literal: true

require_relative 'parser'

class Reminder
  # Build reminder object
  class Create
    def initializer(params)
      self.params = params
    end

    def call
      parsed_params = Parser.new(params)
      Reminder.new(parsed_params)
    end
  end
end
