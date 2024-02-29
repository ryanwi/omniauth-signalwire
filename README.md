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
  :uid => "",
  :info => {
    :email => "",
    :first_name => "",
    :last_name => "",
  },
  :credentials => {
    :token => "a1b2c3d4...", # The OAuth 2.0 access token
  },
  :extra = {}
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/omniauth-signalwire.
