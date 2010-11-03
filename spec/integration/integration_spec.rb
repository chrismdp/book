require File.expand_path(File.join(__FILE__, '..', '..', 'spec_helper'))

require 'tmpdir'
require 'fileutils'

describe "'book' command line tool" do
  let(:working_folder) { Dir.tmpdir + "/book_spec_"+Time.now.strftime("%Y%m%d_%H%M%S") }

  before do
    FileUtils.mkdir_p(working_folder)
  end

  after do
    #FileUtils.rm_rf(working_folder)
  end

  context "creation" do
    it "creates a new folder structure for the new book" do
      Book.create_project(working_folder)
      File.should exist(working_folder + '/documents/introduction.md')
      File.should exist(working_folder + '/book.rb')
    end
  end
end
