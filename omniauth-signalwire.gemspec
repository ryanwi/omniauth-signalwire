# frozen_string_literal: true

require File.expand_path("lib/omniauth-signalwire/version", __dir__)

Gem::Specification.new do |spec|
  spec.authors = ["SignalWire Team", "Ryan Williams"]
  spec.email = ["open.source@signalwire.com"]
  spec.description = "Official OmniAuth strategy for SignalWire."
  spec.summary = "Official OmniAuth strategy for SignalWire."
  spec.homepage = "https://github.com/ryanwi/omniauth-signalwire"
  spec.name = "omniauth-signalwire"
  spec.license = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]
  spec.version = OmniAuth::SignalWire::VERSION
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ryanwi/omniauth-signalwire"
  spec.metadata["changelog_uri"] = "https://github.com/ryanwi/omniauth-signalwire/blob/main/CHANGELOG.md"

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.add_dependency "omniauth", "~> 2.0"
  spec.add_dependency "omniauth-oauth2", "~> 1.8"
  spec.add_development_dependency "rack-test", "~> 2.1"
  spec.add_development_dependency "rspec", "~> 3.13"
  spec.add_development_dependency "webmock", "~> 3.23"
end
