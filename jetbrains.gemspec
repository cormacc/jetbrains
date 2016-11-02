# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jetbrains/version'

Gem::Specification.new do |spec|
  spec.name          = 'jetbrains'
  spec.version       = Jetbrains::VERSION
  spec.authors       = ['Cormac Cannon']
  spec.email         = ['cormacc.public@gmail.com']

  spec.summary       = 'Find and launch Jetbrains IDEs installed using the toolbox from the command line.'
  spec.description   = "Searches default (Linux) Jetbrains Toolbox installation path for latest installation of a given Jetbrains IDE. e.g. 'jetbrains clion' or 'jetbrains idea'"
  spec.homepage      = 'https://rubygems.org/gems/jetbrains'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  #'bin' used for dev-centric binstubs we don't want to add to path
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^#{spec.bindir}/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
end
