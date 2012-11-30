# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'synthesis/version'

Gem::Specification.new do |gem|
  gem.name          = "synthesis"
  gem.version       = Synthesis::VERSION
  gem.author        = "Johnneylee Jack Rollins"
  gem.email         = ["Johnneylee.Rollins@gmail.com"]
  gem.description   = %q{ETL in ruby}
  gem.summary       = %q{ETL in ruby}
  gem.homepage      = "https://github.com/Spaceghost/synthesis"
  gem.licenses      = ['MIT', 'BSD']
  gem.post_install_message =  <<-END
  Thanks for installing.
  END

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'cucumber'
  gem.add_development_dependency 'aruba'
  gem.add_development_dependency 'rspec'
end
