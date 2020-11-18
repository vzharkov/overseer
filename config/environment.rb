require 'bundler/setup'
require 'hanami/api'
require "zeitwerk"

env = ENV.fetch('RACK_ENV', nil) || :test
Bundler.require(:default, env)

loader = Zeitwerk::Loader.new
loader.push_dir('lib')
loader.setup

