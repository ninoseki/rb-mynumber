# rb-mynumber

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rb-mynumber'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rb-mynumber

## Usage

```ruby
require 'mynumber'
# 個人番号の要件を満たしている場合
MyNumber.individual_number?('895980423139')
# => true
# 個人番号の要件を満たしていない場合
MyNumber.individual_number?('895980423138') => true
# => false

# 法人番号の要件を満たしている場合
MyNumber.corporate_number?('2010001163289')
# => true
# 法人番号の要件を満たしていない場合
MyNumber.corporate_number?('2010001163285')
#=> false

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ninoseki/rb-mynumber. This project is intended to be a safe,w welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
