# code here!
require 'pry'
class  School 
attr_accessor :roster
    
    def initialize(name)
        @name = name 
        @roster = {}
        
    end 

    def add_student(name, grade)
     if @roster[grade] == nil 
        @roster[grade] = [name]
     else 
        @roster[grade] << name 
     end 
    end 

    def grade(grade)
        self.roster[grade]
    end 
    
    def sort 
    sorted_roster = {}
        self.roster.each do |grade , students|
        sorted_roster[grade] = students.sort
        end 
        sorted_roster
    
    end 



    
    









end 