require './app'

def main
  puts 'Welcome to My  School Library'
  school = App.new
  school.menu_selection
end

main
