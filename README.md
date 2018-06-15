# Mojimoji

Add awesome methods to String for formatting waste spaces & width.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mojimoji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mojimoji

## Usage

### String#to_em, String#strip_all_spaces, String#strip_all_spaces_and_to_em

```rb
using Mojimoji

string = 'moji moji'

string.to_em
#=> "ｍｏｊｉ　ｍｏｊｉ"

string.strip_all_spaces
#=> "mojimoji"

string.strip_all_spaces_and_to_em
#=> "ｍｏｊｉｍｏｊｉ"
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mikaji/mojimoji.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
