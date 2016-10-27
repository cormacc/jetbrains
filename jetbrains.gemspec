# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jetbrains/version'

Gem::Specification.new do |spec|
  spec.name          = "jetbrains"
  spec.version       = Jetbrains::VERSION
  spec.authors       = ["Cormac Cannon"]
  spec.email         = ["cormacc.public@gmail.com"]

  spec.summary       = %q{Find and launch Jetbrains IDEs installed using the toolbox from the command line.}
  spec.description   = %q{Searches default (Linux) Jetbrains Toolbox installation path for latest installation of a given Jetbrains IDE. e.g. 'jetbrains clion' or 'jetbrains idea'}
  spec.homepage      = "http://rubygems.org/gems/jetbrains"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
