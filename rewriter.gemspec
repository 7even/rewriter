# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rewriter/version'

Gem::Specification.new do |spec|
  spec.name          = 'rewriter'
  spec.version       = Rewriter::VERSION
  spec.authors       = ['Vsevolod Romashov']
  spec.email         = ['7@7vn.ru']
  spec.description   = %q(TODO: Write a gem description)
  spec.summary       = %q(TODO: Write a gem summary)
  spec.homepage      = ''
  spec.license       = 'MIT'
  
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  
  spec.add_runtime_dependency 'parser',   '~> 2.0'
  spec.add_runtime_dependency 'unparser', '~> 0.1'
end
