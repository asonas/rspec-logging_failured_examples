lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec/logging_failure_specs/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-logging_failure_specs"
  spec.version       = RSpec::LoggingFailureSpecs::VERSION
  spec.authors       = ["Yuya Fujiwara"]
  spec.email         = ["hzw1258@gmail.com"]

  spec.summary       = %q{Logging failure specs}
  spec.description   = %q{Logging failure specs}
  spec.homepage      = "https://github.com/asoans/rspec-logging_failure_specs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
