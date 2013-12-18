# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rewriter/version'

Gem::Specification.new do |spec|
  spec.name          = 'rewriter'
  spec.version       = Rewriter::VERSION
  spec.authors       = ['Vsevolod Romashov']
  spec.email         = ['7@7vn.ru']
  spec.description   = %q(Ruby code rewriter. Currently just a proof of concept.)
  spec.summary       = %q(A simple utility to parse and reconstruct ruby code to maintain a given coding style. Currently just a proof of concept.)
  spec.homepage      = 'https://github.com/7even/rewriter'
  spec.license       = 'MIT'
  
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  
  spec.add_runtime_dependency 'parser',   '~> 2.0'
  spec.add_runtime_dependency 'unparser', '~> 0.1'
  spec.add_runtime_dependency 'slop',     '~> 3.4'
  spec.add_runtime_dependency 'colored',  '~> 1.2'
end
