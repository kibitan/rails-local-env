# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/local/env/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-local-env"
  spec.version       = Rails::Local::Env::VERSION
  spec.authors       = ["kibitan"]
  spec.email         = ["uzukifirst@gmail.com"]

  spec.summary       = 'Set configuration of local scope environment for your Rails project'
  spec.description   = <<~DESC
                        simply apply local configuration of Rails by specific file.
                        It's useful especially your development environment, you container, temporally workaround applying!
                      DESC
  spec.homepage      = 'https://github.com/kibitan/rails-local-env/'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
