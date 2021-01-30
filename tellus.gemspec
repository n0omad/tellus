require_relative 'lib/tellus/version'

Gem::Specification.new do |spec|
  spec.name          = 'tellus'
  spec.version       = Tellus::VERSION
  spec.authors       = ["Damoon Imani"]
  spec.email         = ["damoonimani@pm.me"]

  spec.summary       = %q{change any latitude and longitude pair to human readable addresses.}
  spec.description   = %q{

    Tellus: Mother Earth
    A reverse geocoding utility for terminal.
    Use any CLI to change a pair of latitude and longitude to human readable addresses.
    This also works with csv of latitudes and longitudes.
  }
  spec.homepage      = "https://github.com/non-trivial-human/tellus"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/non-trivial-human/tellus"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #dependencies
  spec.add_dependency 'httparty', '~> 0.18.0'

  spec.add_development_dependency 'cucumber', '~> 4.0'
  spec.add_development_dependency 'aruba', '~> 1.0', '>= 1.0.1'

  spec.add_dependency 'thor', '~> 1.0', '>= 1.0.1'

end
