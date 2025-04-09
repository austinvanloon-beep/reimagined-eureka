class Course
        attr_reader :class_name, :capacity, :students

        def initialize(course_data, capacity, class_name)
            @capacity = capacity
            @class_name = class_name
            @students = []
        end
end