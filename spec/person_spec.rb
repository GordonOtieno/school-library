require_relative './spec_helper'

describe Person do
    it 'should have an age' do
        person = Person.new(20)
        expect(person.age).to eq(20)
    end

    it 'should have a name' do
        person = Person.new(20, 'Jane')
        expect(person.name).to eq('Jane')
    end

    it 'should have a parent permission' do
        person = Person.new(20, 'John', parent_permission: true)
        expect(person.parent_permission).to eq(true)
    end
end
