# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qiita/markdown/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "qiita-markdown-cli"
  spec.version       = Qiita::Markdown::Cli::VERSION
  spec.authors       = ["Hidekazu Kobayashi"]
  spec.email         = ["kobahide789@gmail.com"]
  spec.summary       = %q{Command Line Qiita Markdown Compiler}
  spec.description   = %q{Command Line Qiita Markdown Compiler}
  spec.homepage      = "https://github.com/KOBA789/qiita-markdown-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  #spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "qiita-markdown", "~> 0.16"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
