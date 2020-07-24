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

To use Mongo Beautiful Logger as you default mongo logger, create a configuration file, and fill it with the following:
```ruby
require "mongo_beautiful_logger"

# MongoDB Driver:
Mongo::Logger.logger = MongoBeautifulLogger.new

# Mongoid ODM:
Mongoid.logger = MongoBeautifulLogger.new
```

The MongoidBeautifulLogger class takes an optional parameter which specifies the logger instance to be used. This is useful when logging to a file instead of the terminal:
```ruby
MongoBeautifulLogger.new(Logger.new('your_log_file'))
```

*Note: When using a custom logger instance, the default unformatted ruby logger prompt will be used:*
```ruby
=> d, [2020-06-20 14:02:29 No.17329] INFO -- MONGODB: ...
```
If you want to customize the logger prompt, you can use the `logger.formatter` method. For example:
```ruby
logger = Logger.new('log.txt')
logger.formatter = proc { |severity, datetime, progname, msg| "#{msg}" }
Mongoid.logger = MongoBeautifulLogger.new(logger)
```

## Behavior

Mongo Beautiful logger automatically colors all mongodb actions (find, update, insert, delete, aggregate, error, endsession, failure). It will also filter out the redundant messages regarding topology events, and server description changes. If there are any other actions that you would like to be customized, you can open a [github issue](https://github.com/ibraheemdev/mongo_beautiful_logger/issues/new), or submit a pull request. Any contribution is greatly appreciated.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
