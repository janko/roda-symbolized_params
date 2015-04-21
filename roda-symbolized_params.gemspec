Gem::Specification.new do |spec|
  spec.name         = "roda-symbolized_params"
  spec.version      = "0.0.1"
  spec.authors      = ["Janko Marohnić"]
  spec.email        = ["janko.marohnic@gmail.com"]

  spec.summary      = "A plugin for Roda which exposes symbolized request params"
  spec.description  = spec.summary
  spec.homepage     = "https://github.com/janko-m/roda-symbolized_params"
  spec.license      = "MIT"

  spec.files        = Dir["README.md", "LICENSE.txt", "lib/**"]
  spec.require_path = "lib"

  spec.add_development_dependency "roda"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rack-test"
end
