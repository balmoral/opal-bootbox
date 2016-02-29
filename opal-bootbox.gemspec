# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/bootbox/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name           = 'opal-bootbox'
  spec.version        = Opal::Bootbox::VERSION
  spec.authors        = [ 'Colin Gunn' ]
  spec.email          = [ 'colgunn@icloud.com' ]
  spec.homepage       = 'http://github.com/balmoral/opal-bootbox'
  spec.summary        = 'Opal Ruby wrapper for Bootbox Javascript library.'
  spec.license        = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'
  spec.add_dependency 'opal', '>= 0.8.0', '< 0.9.0'
end