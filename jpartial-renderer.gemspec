Gem::Specification.new do |s|
  s.name        = 'jpartial-renderer'
  s.version     = '0.0.1'
  s.date        = '2015-02-11'
  s.summary     = 'Use jbuilder partial files to render ruby hashes'
  s.description = 'Use jbuilder partial files to render ruby hashes'
  s.authors     = ['Ignacio Capurro']
  s.email       = 'icapurrofagian@gmail.com'
  s.files       = ['lib/jpartial-renderer.rb']
  s.homepage    = 'http://rubygems.org/gems/jpartial-renderer'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'activesupport'
  s.add_dependency 'jbuilder'
  s.add_dependency 'rails'

end