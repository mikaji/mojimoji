lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mojimoji/version"

Gem::Specification.new do |spec|
  spec.name          = "mojimoji"
  spec.version       = Mojimoji::VERSION
  spec.authors       = ["Koji Mikami"]
  spec.email         = ["kody.j.gigs@gmail.com"]

  spec.summary       = %q{Add formatting methods to String.}
  spec.description   = %q{Add formatting methods to String}
  spec.homepage      = "https://github.com/mikaji/mojimoji"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_dependency "moji", "~> 1.6"
end
