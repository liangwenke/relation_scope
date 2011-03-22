# encoding: utf-8

version = File.read(File.expand_path("../VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.name = 'relation_scope'
  s.version = version
  s.author = "LiangWenKe"
  s.email = "liangwenke8@gmail.com"
  s.homepage = "http://github.com/wenke/relation_scope"
  s.summary = 'Some rails 3 activerecord relation methods for rails 2.3.x'
  s.description = 'Some very nice name scope method as rails 3 activerecord relation methods'
  
  s.files        = Dir["{lib,test}/**/*", "[A-Z]*", "init.rb"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
