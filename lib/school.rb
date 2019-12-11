# code here!
require 'pry'

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster[grade] == nil
            self.roster[grade] = [name]
        else
            self.roster[grade] << name
        end
        # self.roster[grade] ||= [name]
        # self.roster[grade] << name
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        sorted_roster = {}
        self.roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end
end