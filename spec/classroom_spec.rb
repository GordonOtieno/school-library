require_relative './spec_helper'

describe Classroom do
    it 'should have a label' do
        classroom = Classroom.new('Math')
        expect(classroom.label).to eq('Math')
    end

    it 'should create instance of Classroom' do
        classroom = Classroom.new('Math')
        expect(classroom).to be_an_instance_of(Classroom)
    end

end