# frozen_string_literal: true

require "spec_helper"

RSpec.describe OmniAuth::Strategies::SignalWire do
  subject do
    OmniAuth::Strategies::SignalWire.new({})
  end
end
