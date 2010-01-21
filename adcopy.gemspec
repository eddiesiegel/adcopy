# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{adcopy}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eddie Siegel"]
  s.date = %q{2010-01-21}
  s.description = %q{Simplifies the use of AdCopy puzzles within rails applications}
  s.email = %q{atomon@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "adcopy.gemspec",
     "generators/adcopy_config/USAGE",
     "generators/adcopy_config/adcopy_config_generator.rb",
     "generators/adcopy_config/templates/adcopy_config.yml",
     "init.rb",
     "install.rb",
     "lib/adcopy.rb",
     "lib/controller_methods.rb",
     "lib/view_methods.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/atomon/adcopy}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simplifies the use of AdCopy puzzles within rails applications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

