# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grids_lite/version'

Gem::Specification.new do |spec|
  spec.name          = "grids_lite"
  spec.version       = GridsLite::VERSION
  spec.authors       = ["Miles Stanfield"]
  spec.email         = ["milesstanfield@gmail.com"]

  spec.summary       = %q{An extremely lightweight responsive grid system.}
  spec.description   = %q{A responsive grid system doesn't have to be complicated or full of unused styles that bloats file sizes. GridsLite.css is a lightweight and simple solution to responsive grids.}
  spec.homepage      = "https://github.com/milesstanfield/grids_lite"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "capybara", "> 2.3.0"
  spec.add_development_dependency "capybara-webkit", "~> 1.1.0"
end
