require "pry"
class School

  attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

      def add_student(students_name, grade)
        @roster[grade] ||= []
        @roster[grade] << students_name
      end

        def grade(students_grade)
          @roster[students_grade]
        end


  # this method should arrange the students in each grade by alphabetical order
    def sort
        sorted ={}
        roster.each do |grade, students|
        sorted[grade] = students.sort
      end
      sorted
    end
end
