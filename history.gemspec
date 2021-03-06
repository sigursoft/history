require 'date'

Gem::Specification.new do |gem|
  gem.name = 'history'
  gem.version = 1.0
  gem.license = 'MIT'
  gem.date = Date.today.to_s

  gem.summary = 'History REST service'
  gem.description = 'Belarus historical facts service'

  gem.authors = ['Anton Kozik']
  gem.email = 'anton.kozik@gmail.com'
  gem.homepage = 'http://github.com/sigursoft/history'

  gem.add_dependency 'cuba', '~> 3.9'
  gem.add_dependency 'pg', '~> 1.0'
  gem.add_dependency 'puma', '>= 4.3.3', '< 6.0' 
  gem.add_dependency 'rack', '~> 2.0'
  gem.add_dependency 'sequel', '~> 5.6'

  gem.add_development_dependency 'cutest', '~> 1.2'
  gem.add_development_dependency 'rack-test', '~> 0.7'
  gem.add_development_dependency 'sqlite3', '~> 1.3'

  # ensure the gem is built out of versioned files
  # gem.files = Dir['README*', 'LICENSE', 'lib/**/*', 'config.ru'] & `git ls-files -z`.split("\0")
  gem.files = Dir['README*', 'LICENSE', 'lib/**/*', 'config.ru']
end
