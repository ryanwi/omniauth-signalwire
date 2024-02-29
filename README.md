[![Ruby](https://github.com/ryanwi/omniauth-signalwire/actions/workflows/ruby.yml/badge.svg)](https://github.com/ryanwi/omniauth-signalwire/actions/workflows/ruby.yml)

# OmniAuth SignalWire

This is the official OmniAuth strategy for authenticating to SignalWire.

## Basic Usage

    use OmniAuth::Builder do
      provider :signalwire, ENV['SIGNALWIRE_KEY'], ENV['SIGNALWIRE_SECRET']
    end

## Authentication Hash
An example auth hash available in `request.env['omniauth.auth']`:

```
{
  :provider => "signalwire",
  :uid => "4d1bcf6e-88ed-4cfa-87bb-b986cd65678e",
  :info => {
    :email => "user@example.com",
    :first_name => "Jane",
    :last_name => "Doe",
    :display_name => "Jane Doe",
    ...
  },
  :credentials => {
    :token => "a1b2c3d4...", # The OAuth 2.0 access token
    :refresh_token => "2QY...",
    :expires_at => 1709194759,
    :expires => true
  },
  :extra = {
    :raw_info => {
      ...
    }
  }
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ryanwi/omniauth-signalwire.
