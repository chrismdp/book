# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "book/version"

Gem::Specification.new do |gem|
  gem.name = "book"
  gem.version = Book::VERSION
  gem.summary = %Q{Simple, easy creation of books using ruby}
  gem.description = %Q{Book is a gem which provides a simple, easy interace to allow you to write, maintain and publish a book using ruby.}
  gem.email = "chris.p@rsons.org"
  gem.homepage = "http://github.com/chrismdp/book.git"
  gem.authors = ["Chris Parsons"]
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end

