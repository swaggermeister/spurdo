

Gem::Specification.new do |s|
    s.name          = 'spurdo'
    s.version       = '0.0.1'
    s.platform      = Gem::Platform::RUBY
    s.authors       = ['swaggermeister']
    s.description   = %q{Ruby gem to translate English to Spurdo-speak :DDD}
    s.summary       = %q{Ruby gem to translate English to Spurdo-speak :DDD}
    s.homepage      = 'https://github.com/swaggermeister/spurdo'
    s.license       = 'MIT'
    s.metadata = {
      "source_code_uri" => "https://github.com/swaggermeister/spurdo",
    }
  
    s.files         = `git ls-files`.split($/)
    s.test_files    = s.files.grep(%r{^(test|spec)/})
    s.require_paths = ['lib']
  
    s.required_ruby_version = '>= 1.9.3'
  
    s.add_development_dependency 'bundler'
    s.add_development_dependency 'rake'
    s.add_development_dependency 'pry'
  end
  