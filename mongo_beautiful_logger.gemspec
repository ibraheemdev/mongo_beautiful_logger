lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mongo_beautiful_logger"
  spec.version       = "0.2.0"
  spec.authors       = ["Ibraheem Ahmed"]
  spec.email         = ["ibrah1440@gmail.com"]

  spec.summary       = %q{A simple and beautiful logger for MongoDB/Mongoid in you Ruby/Rails app.}
  spec.homepage      = "https://github.com/ibraheemdev/mongo_beautiful_logger"
  spec.license       = "MIT"

  spec.files         = ["lib/mongo_beautiful_logger.rb", "lib/mongo_beautiful_logger/colors.rb", "lib/mongo_beautiful_logger/mongo_actions.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
