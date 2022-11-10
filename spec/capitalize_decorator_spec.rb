require_relative '../capitalize_decorator'
require_relative '../decorator'
require_relative '../teacher'

describe CapitalizeDecorator do
  let(:teacher) { Teacher.new('Phy', 30, 'Gordon') }
  let(:capitalize_name) { CapitalizeDecorator.new(teacher) }

  describe '#new' do
    it 'is a child class of Decorator' do
      expect(CapitalizeDecorator).to be < BaseDecorator
    end
  end

  describe 'returns a capitalized name' do
    it 'returns a capitalized teacher name' do
      expect(capitalize_name.correct_name).to eq('Gordon')
    end
  end
end
