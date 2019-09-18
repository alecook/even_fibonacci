lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fibonacci/version"

Gem::Specification.new do |spec|
  spec.name = "even_fib"
  spec.version = Fibonacci::VERSION
  spec.authors = ["Alex Cook"]
  spec.email = ["a2cook@gmail.com"]

  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rspec", "~> 3.2"
end