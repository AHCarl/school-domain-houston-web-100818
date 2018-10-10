class School 
  attr_reader :roster 
  
  def initialize(name)
    @name = name 
    @roster = {} 
  end
  
  def add_student(student, grade)
    if roster.key?(grade)
      roster[grade] << student 
    else 
      roster[grade] = []
      roster[grade] << student 
    end 
  end 
  
  def grade(grade_num)
    return roster[grade_num]
  end
  
  def sorted_students 
    roster.each do |grade, students|
      roster[students].sort!
    end
    roster[students]
  end
  
end 