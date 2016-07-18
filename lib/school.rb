# code here!
class School
	attr_reader :roster
	def initialize(name, roster = {})
		@name = name
		@roster = roster
	end

	def add_student(student, grade)
		roster[grade] ||= []
		roster[grade] << student
	end

	def grade(grade)
		roster[grade]
	end

	def sort
		sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  	end
end