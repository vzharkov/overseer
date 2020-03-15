# frozen_string_literal: true

require_relative 'types'

# Encapsulate reminder information
class Reminder < Dry::Struct
  attribute :receiver, Types::Struct::String
  attribute :msg, Types::Struct::String
  attribute :at, Types::Struct::String
end
