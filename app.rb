require_relative './book'
require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './create_person'
require_relative './create_book'
require_relative './create_rental'
require_relative './display_people'
require_relative './display_books'
require_relative './display_rental'
require_relative './load_data'
require_relative './preserve_data'

class App
  include CreatePerson
  include CreateBook
  include CreateRental
  include DisplayBooks
  include DisplayPeople
  include DisplayRental
  include PreserveData
  include PersistData

  attr_accessor :books, :students, :teachers, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
    persist_data
  end

  def menu_selection(selection)
    case selection
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rental_by_id
    else
      puts 'Thanks for using our system. See you later'
      exit
    end
  end

  def exit
    save_books
    save_people
    save_rentals
  end
end
