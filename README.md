# Cucumberhtml
Create nice HTML from cucumber result JSON. As a controller (for test/dev) and a rake task.

## Usage
Mount the controller
```ruby
mount Cucumberhtml::Engine, at: '/cucumber' unless Rails.env.production?
```
It will by default read results from `tmp/cucumber_result.json`

```ruby
rake cucumberhtml:export[tmp/cucumber_result.json, tmp/cucumber_result2.html]
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cucumberhtml', group :development, :test 
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install cucumberhtml
```

## Contributing
PR are welcome

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
