# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memrows/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-memrows-adapter"
  spec.version       = MemRows::VERSION
  spec.authors       = ["Noah Gibbs"]
  spec.email         = ["the.codefolio.guy@gmail.com"]

  spec.summary       = %q{The ActiveRecord MemRows adapter uses memory-only data rows, stored as plain Ruby objects, to fake an ActiveRecord database.}
  spec.description   = %q{This adapter creates a read/write fake database using in-memory data. It doesn't work across multiple processes, nor does it have scalability or other desirable properties for production. The intent is to allow NullDB-style fast testing with more configurability, and to allow benchmarking ActiveRecord without waiting on a real database.}
  spec.homepage      = "https://github.com/noahgibbs/activerecord-memrows-adapter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency 'sql-parser'
  spec.add_runtime_dependency 'activerecord', '>= 5.0.0'
end
