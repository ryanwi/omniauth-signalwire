# frozen_string_literal: true

require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Signalwire
      include OmniAuth::Strategy
    end
  end
end

OmniAuth.config.add_camelization "signalwire", "SignalWire"
