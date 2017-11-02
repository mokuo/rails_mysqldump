# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_mysqldump/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_mysqldump"
  spec.version       = RailsMysqldump::VERSION
  spec.authors       = ["mokuo"]
  spec.email         = ["https://github.com/mokuo/rails_mysqldump"]

  spec.summary       = %q{Run mysqldump in the Rails project}
  spec.description   = %q{By default, it outputs dump file to 'tmp/mysqldump' directory.}
  spec.homepage      = "https://github.com/ultimate-works/rails_mysqldump"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
