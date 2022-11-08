require 'pry'
require_relative './book'
require_relative './student'
require_relative './teacher'
require_relative './rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    puts 'No Available books, Please enter option[4] in Main menu to create one.' if @books.empty?
    @books.each_with_index do |book, index|
      puts "(#{index + 1}) Book => Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_people
    puts 'No person exist. Please enter option[3] to create one' if @people.empty?
    @people.each_with_index do |person, index|
      puts "(#{index + 1}) [#{person.class}] => Name: #{person.name}, Age: #{person.age}, Id: #{person.id}"
    end
  end

  def create_person()
    puts 'Do you want create student (1) or teacher (2)? [Enter the number]: '
    person_type = gets.chomp.to_i
    case person_type
    when 1
      print 'Enter student name: '
      name = gets.chomp
      print 'Enter age: '
      age = gets.chomp
      @people.push(Student.new('classroom', age, name))
      puts "#{name.capitalize} added successfully"
    when 2
      print 'Enter teacher name: '
      name = gets.chomp
      print 'Enter age: '
      age = gets.chomp
      print 'Enter specialization: '
      specialization = gets.chomp
      @people.push(Teacher.new(specialization, age, name))
      puts "#{name.capitalize} added successfully"
    end
  end

  def create_book
    puts 'Create a new book'
    print 'Enter title: '
    title = gets.chomp
    print 'Enter author: '
    authors = gets.chomp
    binding.pry
    @books.push(Book.new(title, author))
    puts "#{title} book added successfully"
  end

  def create_rental()
    puts 'Select a book from the following list by the number:'
    list_books
    book_number = gets.chomp.to_i
    puts ' '
    puts 'Select a person from the following list by the number:'
    list_people
    person_number = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    if @books.empty?
      puts 'No Book exist in the Library. Please create a book to continue'
      create_person
    elsif @people.empty?
      puts 'No person exist. Please create person to continue'
      create_book

      @rentals.push(Rental.new(date, @people[person_number - 1], @books[book_number - 1]))
    end
    puts 'Rental created successfully'
  end

  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals Books:'
    @rentals.each do |rental|
      if rental.person.id == id
        puts "#{rental.person.name}  Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
      else
        puts
        puts 'No Rentals found with that ID'
      end
    end
  end

end
