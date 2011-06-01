# encoding: utf-8

version = File.read(File.expand_path("../VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.name = 'relation_scope'
  s.version = version
  s.author = "LiangWenKe"
  s.email = "liangwenke.com@gmail.com"
  s.homepage = "http://github.com/liangwenke/relation_scope"
  s.summary = 'Support very nice named scope methods for rails 2.2.x, 2.3.x'
  s.description = 'This gem support some very nice named scope methods as rails 3 activerecord relation.'
  
  s.files = Dir["{lib,test}/**/*", "[A-Z]*", "init.rb"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
