require 'rake'
require 'rake/rdoctask'

desc 'Generate documentation for the adcopy plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Adcopy'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "adcopy"
    gem.summary = "Simplifies the use of AdCopy puzzles within rails applications"
    gem.description = "Simplifies the use of AdCopy puzzles within rails applications"
    gem.email = "atomon@gmail.com"
    gem.homepage = "http://github.com/atomon/adcopy"
    gem.authors = ["Eddie Siegel"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end