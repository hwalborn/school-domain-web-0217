require 'pry'

class School
attr_accessor :roster

  def initialize(school)
    @roster = Hash.new()
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|k,v| v.sort!}
  end
end
