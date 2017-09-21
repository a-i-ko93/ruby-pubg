require_relative 'lib/pubg/version'

Gem::Specification.new do |s|
  s.name        = 'pubg'
  s.version     = Pubg::VERSION
  s.authors     = ['Alexander Ivanenko']
  s.email       = ['ivanenko@gmail.com']
  s.homepage    = 'https://github.com/a-i-ko93/ruby-pubg'
  s.summary     = 'Another Ruby wrapper for https://pubgtracker.com/site-api'
  s.description = 'API wrapper for https://pubgtracker.com/site-api based on Faraday gem'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*.rb']

  s.add_runtime_dependency 'recursive-open-struct'
  s.add_runtime_dependency 'faraday'
  s.add_runtime_dependency 'faraday_middleware'


  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'pry'
end
