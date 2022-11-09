module DisplayPeople
  def list_people
    if @people.empty?
      puts 'No Person exists. Please Add'
      create_person
    end
    @people.each_with_index do |people, index|
      puts "#{index}) Name: #{people.name}, ID: #{people.id}, Age: #{people.age}"
    end
  end
end
