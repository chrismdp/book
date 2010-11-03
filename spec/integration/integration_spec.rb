require File.expand_path(File.join(__FILE__, '..', '..', 'spec_helper'))

require 'tmpdir'
require 'fileutils'

describe "'book' command line tool" do
  let(:working_folder) { Dir.tmpdir + "/book_spec_"+Time.now.strftime("%Y%m%d_%H%M%S") }
  let(:command) { File.expand_path(File.join(__FILE__, '..', '..', '..', 'bin', 'book')) }

  before do
    FileUtils.mkdir_p(working_folder)
  end

  after do
    FileUtils.rm_rf(working_folder)
  end

  context "creation" do
    it "creates a new folder structure for the new book" do
      cmd = "cd #{working_folder} && #{command} create mybook"
      `#{cmd}`
      File.should exist(working_folder + '/mybook/documents/introduction.md')
      File.should exist(working_folder + '/mybook/book.rb')
    end

    it "copies over the skeleton files" do
      ["/documents/introduction.md",
       "/book.rb"].each do |f|
        first = working_folder + f
        second = File.expand_path(File.join(__FILE__, '..', '..', '..', 'skeleton', f))
        File.open(first, 'r').read.should == File.open(second, 'r').read
       end
    end
  end
end
