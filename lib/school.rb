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
  
  
  
end 