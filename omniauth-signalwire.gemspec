# frozen_string_literal: true

require File.expand_path("lib/omniauth-signalwire/version", __dir__)

Gem::Specification.new do |spec|
  spec.authors = ["SignalWire Team"]
  spec.email = ["open.source@signalwire.com"]
  spec.description = "Official OmniAuth strategy for SignalWire."
  spec.summary = "Official OmniAuth strategy for SignalWire."
  spec.homepage = "https://github.com/signalwire/omniauth-signalwire"
  spec.name = "omniauth-signalwire"
  spec.license = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]
  spec.version = OmniAuth::SignalWire::VERSION
  spec.required_ruby_version = ">= 2.7"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/signalwire/omniauth-signalwire"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(__dir__) do
  #   `git ls-files -z`.split("\x0").reject do |f|
  #     (File.expand_path(f) == __FILE__) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
  #   end
  # end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.add_dependency "omniauth", "~> 2.0"
  spec.add_dependency "omniauth-oauth2", "~> 1.8"
  spec.add_development_dependency "rack-test", "~> 2.1"
  spec.add_development_dependency "rspec", "~> 3.13"
  spec.add_development_dependency "webmock", "~> 3.23"
end
