# frozen_string_literal: true

require "spec_helper"

RSpec.describe OmniAuth::Strategies::SignalWire do
  subject(:strategy) { described_class.new({}) }

  describe "#client" do
    it "has the correct site" do
      expect(strategy.client.site).to eq("https://fabric.signalwire.com")
    end

    it "has the correct authorization url" do
      expect(strategy.client.options[:authorize_url]).to eq("/login/oauth/authorize")
    end
  end
end
