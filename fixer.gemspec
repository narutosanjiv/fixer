# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fixer/version"

Gem::Specification.new do |spec|
  spec.name          = "fixer"
  spec.version       = Fixer::VERSION
  spec.authors       = ["Sanjiv Jha"]
  spec.email         = ["narutosanjiv@gmail.com"]

  spec.summary       = %q{Fixer: Gem for Fetching Exchange Rate}
  spec.description   = %q{Fixer gem mainly is a wrapper around Fixer.io api.Fixer.io is a free JSON API for current and historical foreign exchange rates published by the European Central Bank. }
  spec.homepage      = "https://github.com/narutosanjiv/fixer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug"
end
