# frozen_string_literal: true

require 'bundler/setup'
require 'hanami/api'
require_relative 'lib/reminder_list'

# Main app class with simple routes
class OverseerApp < Hanami::API
  @reminders = ReminderList.new([])

  get '/' do
    json(data: @reminders)
  end

  put '/remind' do
    new_reminder = Reminder.new(params)
    @reminders.push(new_reminder)

    json(data: new_reminder)
  end
end

run OverseerApp.new
