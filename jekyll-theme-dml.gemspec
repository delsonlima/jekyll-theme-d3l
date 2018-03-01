# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-dml"
  spec.version       = "0.1.0"
  spec.authors       = ["Delson Lima"]
  spec.email         = ["delsonlima.dev@gmail.com"]

  spec.summary       = %q{A simple dark theme based on 'minima', with easy multilingual setup}
  spec.homepage      = "https://github.com/delsonlima/jekyll-theme-dml"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select {
    |f| f.match(%r{^(404|assets|_data|_includes|_layouts|_sass|LICENSE|README)}i)
  }

  spec.add_runtime_dependency "jekyll", "~> 3.6", ">= 3.6.2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
