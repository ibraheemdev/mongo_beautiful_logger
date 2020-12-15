# Mongo Beautiful Logger

[![](https://img.shields.io/gem/dt/mongo_beautiful_logger?style=for-the-badge)](https://rubygems.org/gems/mongo_beautiful_logger)
[![](https://img.shields.io/gem/v/mongo_beautiful_logger?style=for-the-badge)](https://rubygems.org/gems/mongo_beautiful_logger)
[![](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](https://github.com/ibraheemdev/mongo_beautiful_logger/blob/master/LICENSE.txt)

Have you ever started your rails console or log files and groaned when this is what you saw? 😩

<img src="./img/bad_logs.gif" width="700">


Mongo Beautiful Logger is simple and beautiful logging gem that converts THAT, into this:

<img src="./img/beautiful_logs.gif" width="700">

Amazing, right? 😃

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongo_beautiful_logger'
```

And then run:

```bash
$ bundle install
```

Or you can install it manually:

```bash
$ gem install mongo_beautiful_logger
```

## Usage

To set Mongo Beautiful Logger as the default logger for MongoDB, create a configuration file and add it with the following:
```ruby
# config/initializers/mongo_logger.rb

require "mongo_beautiful_logger"

# MongoDB Driver:
Mongo::Logger.logger = MongoBeautifulLogger.new($stdout)

# Mongoid ODM:
Mongoid.logger = MongoBeautifulLogger.new($stdout)
```

The `MongoidBeautifulLogger` class takes unlimited parameters which specify multiple output destinations. This can be used to output logs to a file as well as the console:
```ruby
MongoBeautifulLogger.new($stdout, 'log.txt')
```

## Behavior

Mongo Beautiful logger automatically colors all mongodb actions (find, update, insert, delete, aggregate, error, endsession, failure). It will also filter out the redundant messages regarding topology events, and server description changes. If there are any other actions that you would like to be customized, you can open a [github issue](https://github.com/ibraheemdev/mongo_beautiful_logger/issues/new) or submit a pull request. Contributions are greatly appreciated.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
