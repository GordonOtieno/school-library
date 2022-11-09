require './app'

class Main
  def initialize
    @app = App.new
    prompt
  end

  def prompt
    loop do
      display_options
      option = accept_input

      @app.menu_selection(option)

      break if option == 7
    end
  end

  def display_options
    puts 'Please choose one of the options: '
    puts '1. - List all books'
    puts '2. - List all people'
    puts '3. - Create a person'
    puts '4. - Create a book'
    puts '5. - Create a rental'
    puts '6. - List all rentals for a given person ID'
    puts '7. - Exit'
  end

  def accept_input
    puts 'Enter a number: '
    option = gets.chomp.to_i
    while option.nil? || option < 1 || option > 7
      puts 'Please Enter a number between 1 and 7.'
      print 'Enter a number: '
      option = gets.chomp.to_i
    end
    option
  end
end
Main.new
