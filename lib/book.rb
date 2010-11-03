class Book
  def self.create_project dir
    FileUtils.mkdir_p("#{dir}/documents")
    FileUtils.cp(File.expand_path(File.join(__FILE__, '..', '..', 'skeleton', 'documents', 'introduction.md')), "#{dir}/documents/introduction.md")
    FileUtils.cp(File.expand_path(File.join(__FILE__, '..', '..', 'skeleton', 'book.rb')), "#{dir}/book.rb")
  end
end
