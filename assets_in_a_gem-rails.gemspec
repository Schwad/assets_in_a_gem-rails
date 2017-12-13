# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "assets_in_a_gem/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "assets_in_a_gem-rails"
  spec.version       = AssetsInAGem::Rails::VERSION
  spec.authors       = ["Nick Schwaderer"]
  spec.email         = ["nick.schwaderer@oceanshq.com"]

  spec.summary       = %q{Example gem demonstrating gemification of assets in Rails.}
  spec.homepage      = "https://github.com/schwad/assets_in_a_gem-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "rails"
  spec.add_dependency "sass"
  spec.add_dependency "sass-rails"
end
