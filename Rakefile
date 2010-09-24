require 'rake'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "formhelper"
    s.summary = "This is a library to create different form field elements, allows form object to parse into different formats (YAML, JSON, XML)
    "
    s.description = "This is a library to create different form field elements, allows form object to parse into different formats (YAML, JSON, XML)
    "
    s.email = "shyamkkhadka@gmail.com"
    s.homepage = "http://github.com/shyamkkhadka/formhelper"
    s.authors = ["shyamkkhadka"]
    s.add_development_dependency("json_pure","~> 1.4.3")
    s.add_runtime_dependency(%q<json_pure>, "~> 1.4.3")
  end
  
  Jeweler::GemcutterTasks.new

  require "rake/testtask"
  Rake::TestTask.new(:test) do |test|
    test.libs << "test"
    test.ruby_opts << "-rubygems"
    test.pattern = "test/**/*_test.rb"
    test.verbose = true
  end
  
task :default  => :test
  
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "formhelper #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
