# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sb_internal_style/version'

Gem::Specification.new do |spec|
  spec.name          = "sb_internal_style"
  spec.version       = SbInternalStyle::VERSION
  spec.authors       = ["Leon Miller-Out"]
  spec.email         = ["leon@singlebrook.com"]
  spec.description   = %q{Styling common to various SB internal apps}
  spec.summary       = %q{Styling common to various SB internal apps}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "font_assets"
  spec.add_dependency "railties"
end
