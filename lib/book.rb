class Book
  def self.create_project dir
    FileUtils.mkdir_p("#{dir}/documents")
    FileUtils.touch("#{dir}/documents/introduction.md")
    FileUtils.touch("#{dir}/book.rb")
  end
end
