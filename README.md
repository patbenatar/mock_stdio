# MockStdio

Helpers for working with stdin and stdout in tests

## Installation

Add this line to your application's Gemfile:

    gem "mock_stdio"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mock_stdio

## Usage

Include in your spec helpers

```ruby
require "mock_stdio"

RSpec.configure do |config|
  config.include MockStdio
end
```

Supply input to `gets` or any read from the stdio buffer and return anything
written to stdout:

```ruby
follow_prompts "Yes", "No", "Maybe" do
  puts "Should I?"
  gets
  puts "Really?"
  gets
  puts "Are you sure?"
  gets
end
```

Capture and return stdout:

```ruby
capture_stdout { puts "Hey" }
```

Silence stdout to keep spec output clean:

```ruby
config.before(:all, &:silence_output)
config.after(:all, &:enable_output)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
