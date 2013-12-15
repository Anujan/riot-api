Gem::Specification.new do |s|
  s.name        = 'riot-api'
  s.version     = '0.0.2'
  s.date        = '2013-12-14'
  s.summary     = "Wrapper for Riot Games' API!"
  s.description = "An API that allows users to interact with Riot Games' League of Legends API"
  s.authors     = ["Anujan Panchadcharam"]
  s.email       = 'anujan714@gmail.com'
  s.require_paths = %w[lib]
  s.files       = `git ls-files`.split("\n")
  s.homepage    = %q{https://github.com/anujan/riot-api} 
  s.extra_rdoc_files = ['README.md', 'LICENSE.md']
  s.add_dependency('activesupport')
  s.add_dependency('httparty')
  s.license     = 'MIT'
end