require ./lib/course.rb
require ./lib/student.rb

RSpec.describe Course do
let(:course_data) {:Calculus}
let(:capacity) {2}
let(:course) {Course.new}

describe "#initialize" do
    it "sets class name" do
        expect(course.class_name).to eq("Calculus")
    end
end