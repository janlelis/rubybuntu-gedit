# encoding: utf-8
require 'rubygems' unless defined? Gem
 
Gem::Specification.new do |s|
  s.name        = "rubybuntu-gedit"
  s.version     = Date.today.strftime("%y.%m.%d")
  s.authors     = ["Jan Lelis"]
  s.email       = "mail@janlelis.de"
  s.homepage    = "https://github.com/janlelis/rubybuntu-gedit"
  s.summary     = "Ruby/Web devoloper's gedit"
  s.description = "Ruby/Rails/Web related gedit language definitions, mime types, styles and snippets."

  s.files = Dir.glob(%w|bin/* [A-Z]*.{txt,rdoc} data/**/*|) + %w|Rakefile rubybuntu-gedit.gemspec|
  s.executables = Dir['bin/*'].map{|f| File.basename f }
  s.license = "GPL"
end
