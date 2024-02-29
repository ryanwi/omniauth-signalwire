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
          email: raw_info["email"],
          first_name: raw_info["first_name"],
          last_name: raw_info["last_name"],
          display_name: raw_info["display_name"],
          job_title: raw_info["job_title"],
          time_zone: raw_info["time_zone"],
          country: raw_info["country"],
          region: raw_info["region"],
          company_name: raw_info["company_name"]
        }
      end

      extra do
        {
          "raw_info" => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/subscriber/info").parsed
      end
    end
  end
end

OmniAuth.config.add_camelization "signalwire", "SignalWire"
