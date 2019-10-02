# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "influxdb/rails/version"

Gem::Specification.new do |s|
  s.name        = "influxdb-rails"
  s.summary     = %q{InfluxDB bindings for Ruby on Rails.}
  s.description = %q{This gem automatically instruments your Ruby on Rails application using InfluxDB.}
  s.version     = InfluxDB::Rails::VERSION
  s.authors     = ['Christian Bruckmayer', 'Henne Vogelsang']
  s.email       = ['christian@bruckmayer.net', 'hvogel@hennevogel.de']
  s.licenses    = ['MIT']
  s.homepage    = "http://influxdb.com"
  s.metadata = {
    "bug_tracker_uri"   => "https://github.com/influxdata/influxdb-rails/issues",
    "changelog_uri"     => "https://github.com/influxdata/influxdb-rails/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/influxdata/influxdb-rails/blob/master/README.md",
    "source_code_uri"   => "https://github.com/influxdata/influxdb-rails"
  }

  s.files         = `git ls-files`.split($/)
  s.test_files    = Dir.glob('test/**/*') + Dir.glob('spec/**/*') + Dir.glob('features/**/*')
  s.executables   = Dir.glob('bin/**/*').map {|f| File.basename(f)}
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'influxdb', '~> 0.5.0'
  s.add_runtime_dependency 'railties', '> 3'

  s.add_development_dependency 'bundler', ['>= 1.0.0']
  s.add_development_dependency 'fakeweb', ['>= 0']
  s.add_development_dependency 'rake', ['>= 0']
  s.add_development_dependency 'rdoc', ['>= 0']
  s.add_development_dependency 'rspec', ['>= 0']
  s.add_development_dependency 'rspec-rails', ['>= 3.0.0']
  s.add_development_dependency 'tzinfo', ['>= 0']

  s.post_install_message = %q{
This is the last supported version of influxdb-rails in the 0.4 series. The
next release will be 1.0 with quite a lot of breaking changes. For details:

https://github.com/influxdata/influxdb-rails/wiki/1.0-Upgrade-Guide

}
end
