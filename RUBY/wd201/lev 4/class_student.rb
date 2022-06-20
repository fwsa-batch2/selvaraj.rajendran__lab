class Student
  def initialize(name, roll_no)
    @name = name
    @roll_no = roll_no
    @is_enrolled = false
  end

  def enroll
    @is_enrolled = true
  end

  def name
    @name
  end

  def roll_no
    @roll_no
  end

  def get_name
    puts "#{@name}"
  end

  def get_roll_no
    puts "#{@roll_no}"
  end

  def is_enroll?
    puts "#{@is_enrolled}"
  end
end

enrolled_student = Student.new("selvaraj", 100043).enroll
puts enrolled_student.is_enroll?
