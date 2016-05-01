# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'posinstall/version'

Gem::Specification.new do |spec|
  spec.name          = "posinstall"
  spec.version       = Posinstall::VERSION
  spec.authors       = ["Luciano Prestes Cavalcanti"]
  spec.email         = ["lucianopcbr@gmail.com"]

  spec.summary       = "Run scripts after apt install"
  spec.description   = "Add scripts to run after install a package with APT "\
                       "the scripts will run with the installed package as "\
                       "argv"
  spec.homepage      = "https://github.com/LucianoPC/posinstall"

  #   Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
