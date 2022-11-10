require_relative '../classroom'

describe Classroom do
  let(:student) { Student.new(21, 'Gordy') }
  let(:classroom) { Classroom.new('Phy') }
  let(:classroom_student) { Classroom.new('Phy').add_student(student) }

  describe '#new' do
    it 'takes a label and a number as parameters and returns a Classroom object' do
      expect(classroom).to be_an_instance_of(Classroom)
    end
  end

  describe '#students' do
    it 'returns an empty array' do
      expect(classroom.students).to be_empty
    end
  end

  describe '#add_student' do
    it 'adds a student to the classroom' do
      expect(classroom_student.students).to include(student)
    end
  end
end
