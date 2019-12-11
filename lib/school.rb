require "pry"

class School 

    def initialize(school_name)

        @school_name = school_name 
        @roster = {}
    end 

    #just calls the school roster
    def roster 
        @roster
    end 

    #adds student to the school roster including their grade
    def add_student(student_name = "Nemo", grade = "unknown")

        if @roster[grade].nil? == false #checks to see if grade key exists yet 
            
            @roster[grade] << student_name 
        elsif @roster[grade].nil? == true 

            @roster[grade] = []
            @roster[grade] << student_name 
        end 
    end 

    def grade(grade_num)

        return @roster[grade_num]
    end 

    def sort

        @roster.each do |grade, members|

            members.sort!
        end 
    end 
end 