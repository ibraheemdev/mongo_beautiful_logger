# Mongo Beautiful Logger

Have you ever started your rails console or log files, and groaned when this is what you saw? 😩

![](./img/bad_logs.gif)


Mongo Beautiful Logger is simple and beautiful logging gem that converts THAT, into this:

![](./img/beautiful_logs.gif)

Amazing, right? 😃

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongo_beautiful_logger'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install mongo_beautiful_logger

## Usage

To use Mongo Beautiful Logger as you default mongo logger, create a configuration file:
```ruby
require "mongo_beautiful_logger"

# plain mongo:
Mongo::Logger.logger = MongoBeautifulLogger.new

# Mongoid ODM:
Mongoid.logger = MongoBeautifulLogger.new

# Mongoid + Rails
Mongoid.logger = MongoBeautifulLogger.new if Rails.env.development?
```

The MongoidBeautifulLogger class takes an optional parameter which specifies the logger instance to be used. This is useful when logging to a file instead of the terminal:
```ruby
MongoBeautifulLogger.new(Logger.new('your_log_file'))
```

## Behavior

Mongo Beautiful logger automatically colors all mongodb actions (find, update, insert, delete, aggregate, error, endsession, failure). It will also filter out the redundant messages regarding topology events, and server description changes. If there are any other actions that you would like to be included, you can open a [github issue](https://github.com/ibraheemdev/mongo_beautiful_logger/issues/new), or submit a pull request. Any contribution is greatly appreciated.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
