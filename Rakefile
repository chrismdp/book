require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "book"
    gem.summary = %Q{Simple, easy creation of books using ruby}
    gem.description = %Q{Book is a gem which provides a simple, easy interace to allow you to write, maintain and publish a book using ruby.}
    gem.email = "chris.p@rsons.org"
    gem.homepage = "http://github.com/chrismdp/book.git"
    gem.authors = ["Chris Parsons"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.files = FileList['lib/**/*.rb']
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

namespace :spec do
  RSpec::Core::RakeTask.new(:unit) do |spec|
    spec.pattern = 'spec/unit/**/*_spec.rb'
  end

  RSpec::Core::RakeTask.new(:integration) do |spec|
    spec.pattern = 'spec/integration/**/*_spec.rb'
  end
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
  spec.rcov_opts =  %q[--exclude "spec"]
end

task :spec => :check_dependencies

task :default => :spec
