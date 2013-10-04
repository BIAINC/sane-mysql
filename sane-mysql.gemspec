# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sane/mysql/version'

Gem::Specification.new do |spec|
  spec.name          = "sane-mysql"
  spec.version       = Sane::Mysql::VERSION
  spec.authors       = ["Paul Morton"]
  spec.email         = ["pmorton@biaprotect.com"]
  spec.description   = "Sane default mysql options"
  spec.summary       = "Sane default mysql options"
  spec.homepage      = ""
  spec.license       = "Apache 2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency 'mysql2'
end
