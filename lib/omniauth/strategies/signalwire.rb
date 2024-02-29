# frozen_string_literal: true

require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class SignalWire < OmniAuth::Strategies::OAuth2
      option :name, :signalwire

      option :client_options, {
        site: "https://fabric.signalwire.com",
        authorize_url: "https://id.fabric.signalwire.com/login/oauth/authorize",
        token_url: "https://id.fabric.signalwire.com/oauth/token"
      }

      option :pkce, true

      uid { raw_info["id"] }

      info do
        {
          name: raw_info["name"],
          email: raw_info["email"]
        }
      end

      extra do
        {
          "raw_info" => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/me").parsed
      end
    end
  end
end

OmniAuth.config.add_camelization "signalwire", "SignalWire"
