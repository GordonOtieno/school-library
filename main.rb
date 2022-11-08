require './app'

def main
  puts 'Welcome to My  School Library'
  #  school = App.new
  # school.menu_selection
end
def main_menu
  puts ' '
  puts 'Please choose an option by entering a number:
      1 - List all books
      2 - List all people
      3 - Create a person
      4 - Create a book
      5 - Create a rental
      6 - List all rentals for a given person id
      7 - Exit'
  puts ' '
end

# rubocop:disable Metrics/CyclomaticComplexity
def menu_selection
  main_menu
  school = App.new
  selection = gets.chomp.to_i
  case selection
  when 1
    school.list_books
  when 2
    school.list_people
  when 3
    school.create_person
  when 4
    school.create_book
  when 5
    school.create_rental
  when 6
    school.list_rentals
  when 7
    puts 'Thanks for using our system. See you later'
    exit
  end
  
  # rubocop:enable Metrics/CyclomaticComplexity
end

main
menu_selection
