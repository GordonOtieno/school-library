require_relative './spec_helper' 

describe CapitalizeDecorator do
    it 'should capitalize the text' do
        text = CapitalizeDecorator.new('hello')
        expect(text.correct_name).to eq('Hello')
    end

    it 'should create instance of CapitalizeDecorator' do
        text = CapitalizeDecorator.new('hello')
        expect(text).to be_an_instance_of(CapitalizeDecorator)
    end


end

