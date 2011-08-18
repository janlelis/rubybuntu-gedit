# encoding: utf-8
require 'rubygems' unless defined? Gem
 
Gem::Specification.new do |s|
  s.name        = "rubybuntu-gedit"
  s.version     = Time.now.strftime("%y.%m.%d")
  s.authors     = ["Jan Lelis", "Snippets by Christoph Olszowka", "Please see individual files for author and license"]
  s.email       = "mail@janlelis.de"
  s.homepage    = "https://github.com/janlelis/rubybuntu-gedit"
  s.summary     = "Ruby/Web devoloper's gedit"
  s.description = "Ruby/Rails/Web related gedit language definitions, mime types, styles and snippets."

  s.files = Dir.glob(%w|bin/* [A-Z]*.{txt,rdoc} data/**/*|) + %w|Rakefile rubybuntu-gedit.gemspec|
  s.executables = Dir['bin/*'].map{|f| File.basename f }
  s.license = "GPL"

  len = s.homepage.size
  s.post_install_message = \
   ("       ┌── " + "info ".ljust(len-2,'%')            + "─┐\n" +
    " J-_-L │ "   + s.homepage                          + " │\n" +
    "       ├── " + "usage ".ljust(len-2,'%')           + "─┤\n" +
    "       │ "   + "rubybuntu-gedit install".ljust(len,' ')         + " │\n" +
    "       └─"   + '─'*len                             + "─┘").gsub('%', '─') # 1.8 workaround
end
