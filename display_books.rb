module DisplayBooks
  def list_books
    if @books.empty?
      puts 'No Books in the store. Please insert'
      create_book
    end
    @books.each_with_index do |book, index|
      puts "#{index}) Title: '#{book.title}', Author: '#{book.author}'"
    end
  end
end
