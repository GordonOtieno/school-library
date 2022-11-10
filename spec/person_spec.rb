require_relative '../person'
require_relative '../book'

describe Person do
  before :each do
    @person = Person.new(17, 'goddy', parent_permission: true)
  end

  describe '#new' do
    it 'takes two parameters and returns a person object' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#correct_name' do
    it 'should return the correct name without any change' do
      @person.correct_name.should eq @person.name
    end
  end
end
