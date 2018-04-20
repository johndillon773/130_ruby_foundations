# grade_school.rb

class School
  def initialize
    @roster = Hash.new([])
  end
  
  def to_h
    @roster.each { |_, v| v.sort! }
           .sort_by { |grade, _| grade }
           .to_h
  end
  
  def add(student, number)
    @roster[number] += [student]
  end
  
  def grade(number)
    @roster[number]
  end
end

