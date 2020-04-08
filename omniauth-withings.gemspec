# frozen_string_literal: true
# -*- encoding: utf-8 -*-

require File.expand_path('../lib/omniauth-withings/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['David Faber']
  gem.email         = ['david@1bios.co']
  gem.description   = 'OmniAuth strategy for Withings.com.'
  gem.summary       = 'OmniAuth strategy for Withings.com.'
  gem.homepage      = 'https://github.com/1bios/omniauth-withings'

  gem.executables   =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-withings'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Withings::VERSION

  gem.add_dependency 'omniauth-oauth2', '~> 1.6'
end
