# frozen_string_literal: true

$:.unshift File.expand_path(__dir__)
$:.unshift File.expand_path("../lib", __dir__)
require "rspec"
require "rack/test"
require "webmock/rspec"
require "omniauth"
require "omniauth-signalwire"

RSpec.configure do |config|
  config.include WebMock::API
  config.include Rack::Test::Methods
  config.extend  OmniAuth::Test::StrategyMacros, type: :strategy
end
