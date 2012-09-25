# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nobody/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["GordonDiggs"]
  gem.email         = ["gordon@gordondiggs.com"]
  gem.description   = %q{Null Object Pattern shorthand}
  gem.summary       = %q{Easily use the Null Object Pattern in a class}
  gem.homepage      = "https://github.com/GordonDiggs/nobody"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nobody"
  gem.require_paths = ["lib"]
  gem.version       = Nobody::VERSION

  gem.add_development_dependency 'rake'
end
