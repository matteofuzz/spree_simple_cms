# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_simple_cms'
  s.version     = '1.0.0'
  s.summary     = 'Extension to create a simple CMS and Blog for you Spree Shop'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Damiano Giacomello'
  s.email             = 'damiano.giacomello@diginess.it'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  #s.files         = `git ls-files`.split("\n")
  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'
  s.add_dependency 'spree_auth'
  s.add_dependency 'formtastic'
  s.add_dependency 'friendly_id', '~> 4.0.1'
  s.add_dependency 'ckeditor', '3.7.0.rc3'
  s.add_dependency 'paperclip', '>= 2.5.0'
  
  s.add_development_dependency 'rspec-rails'
end
