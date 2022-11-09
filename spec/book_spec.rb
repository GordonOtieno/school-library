require_relative './spec_helper'

describe Book do
    it 'should have a title' do
        book = Book.new('The Hobbit', 'J.R.R. Tolkien')
        expect(book.title).to eq('The Hobbit')
    end

    it 'should have an author' do
        book = Book.new('The Hobbit', 'J.R.R. Tolkien')
        expect(book.author).to eq('J.R.R. Tolkien')
    end


    it 'should create instance of Book' do
        book = Book.new('The Hobbit', 'J.R.R. Tolkien')
        expect(book).to be_an_instance_of(Book)
    end

end
