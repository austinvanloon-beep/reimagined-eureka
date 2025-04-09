require './lib/student'

RSpec.describe Student do
  let(:student_data) { Student.new({ name: "Morgan", age: 21, scores: [] }) }

  describe '#initialize' do
    it "sets the student's name and age" do
      expect(student_data.name).to eq("Morgan")
      expect(student_data.age).to eq(21)
    end
  end

  describe '#log_score' do
    it "log score to student scores" do
      student_data.log_score(89)
      expect(student_data.scores).to include(89)
    end
  end

  describe '#grade' do
    it "returns 0 if no scores" do
      expect(student_data.grade).to eq(0)
    end

    it "returns average of scores" do
      student_data.log_score(89)
      student_data.log_score(78)
      expect(student_data.grade).to eq(83.5) # Correct expected grade
    end
  end
end