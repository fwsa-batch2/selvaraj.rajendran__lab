class Course
  def initialize(name, students)
    @name = name
    @students = students
  end

  def add_student(student)
    @students.push(student)
  end

  def get_s_list
    @students
  end

  def get_Course_name
    @name
  end

  def is_student_enrolled?(roll_no)
    @students.any? { |student| student.roll_no == roll_no }
  end
end

c = Course.new("C.A", ["SELVA", "KARAN"])

c.add_student("ACE")
c.add_student([13, "lime"])

print c.get_s_list
puts c.get_Course_name
c.is_student_enrolled?("ACE")
