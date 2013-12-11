Gem::Specification.new do |s|
  s.name        = 'riot_api'
  s.version     = '0.0.0'
  s.date        = '2013-12-11'
  s.summary     = "Wrapper for Riot Games' API!"
  s.description = "An API that allows users to interact with Riot Games' League of Legends API"
  s.authors     = ["Anujan Panchadcharam"]
  s.email       = 'anujan714@gmail.com'
  s.require_paths = %w[lib]
  s.files       = `git ls-files`.split("\n")
  s.homepage    = %q{https://github.com/anujan/riot_api} 
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.add_dependency('activesupport', '~> 4.0.2')
  s.license     = 'MIT'
end