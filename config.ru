# frozen_string_literal: true

require 'bundler/setup'
require 'hanami/api'

# Main app class with simple routes
class OverseerApp < Hanami::API
  get '/' do
    'Hello, world'
  end
end

run OverseerApp.new
