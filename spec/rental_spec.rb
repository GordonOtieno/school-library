require_relative '../rental'
require_relative '../teacher'
require_relative '../book'

describe Rental do
  let(:rental) { Rental.new('10-11-2022', Book.new('title', 'author'), Teacher.new('Phy', 30)) }

  describe '#new' do
    it 'takes a date, book and person as parameters and returns a Rental object' do
      expect(rental).to be_an_instance_of(Rental)
    end
  end

  describe '#book' do
    it 'returns the correct book' do
      expect(rental.book).to be_an_instance_of(Book)
    end
  end
  describe '#date' do
    it 'returns the correct date' do
      expect(rental.date).to eq('10-11-2022')
    end
  end
end
