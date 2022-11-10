require_relative '../nameable'
require_relative '../decorator'

describe BaseDecorator do
  describe '#new' do
    it 'is a child class of Nameable' do
      expect(BaseDecorator).to be < Nameable
    end
  end
end
