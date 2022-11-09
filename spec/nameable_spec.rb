require_relative './spec_helper'

describe Nameable do
   
    it 'should create instance of Nameable' do
        nameable = Nameable.new
        expect(nameable).to be_an_instance_of(Nameable)
    end

    it 'should have correct_name raises a not implemented error' do
        nameable = Nameable.new
        expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
end