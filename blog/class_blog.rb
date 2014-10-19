#Grade is a constant and is capitalized to show this. It is a new object and can have many instances of itself. Different grades(1st,2nd....) are all Grades.

class Grade

#This is setting up "instance variables" that can be used throughout the class "Grade" These are attributes of each instance of "Grade"
  #(attribute accessor) these will be seen like this: @grade_number,@teachers etc.

  attr_accessor :name, :grade_number, :num_of_pupils, :teacher

#This will define the initialize method which will populate every instance of Grade with the same attributes. These are required inputs to create an instance.

  def initialize(name, grade_number, num_of_pupils, teacher)
    @name = name
    @grade_number = grade_number
    @num_of_pupils = num_of_pupils
    @teacher = teacher
    if grade_number == "kindergarten"
      puts "Welcome to #{grade_number}, #{name}. You have #{num_of_pupils.to_i - 1} classmates this year, and your teacher is #{teacher}."
    else
      puts "Welcome to #{grade_number} grade, #{name}. You have #{num_of_pupils.to_i - 1} classmates this year, and your teacher is #{teacher}."
    end
  end

#Every time a new instance of Grade is produced, the greeting will be printed out with a puts (put string)method.

#You can create new methods, or actions, to perform on each instance of Grade. Using dot notation to combine methods and objects, you can manipulate them.

#Here's another method definition:

  def dismissal
    if @grade_number == "kindergarten"
      puts "Dismissal time for #{grade_number} is 1:00."
    else
      puts "Regular Grades are dismissed at 3:00."
    end
  end

end

#So we determine that if your Grade is kindergarten, you will be dismissed at 1:00 and everyone else is dismissed at 3:00.

#Here's how you create a new instance of a Grade:

kindergarten = Grade.new("Sarah", "kindergarten", 44, "Mrs. Mackey")

first = Grade.new("Jo-Bill", "first", 30, "Mr. Blah")#Required inputs to initialize

#And here's how you use dot notation to perform actions on your new instance of a Grade:

kindergarten.dismissal

first.dismissal


class Grade
  attr_accessor :name, :grade_number, :num_of_pupils, :teacher
  def initialize(name, grade_number, num_of_pupils, teacher)
    @name = name
    @grade_number = grade_number
    @num_of_pupils = num_of_pupils
    @teacher = teacher
    if grade_number == "kindergarten"
      puts "Welcome to #{grade_number}, #{name}. You have #{num_of_pupils.to_i - 1} classmates this year, and your teacher is #{teacher}."
    else
      puts "Welcome to #{grade_number} grade, #{name}. You have #{num_of_pupils.to_i - 1} classmates this year, and your teacher is #{teacher}."
    end
  end
  def dismissal
    if @grade_number == "kindergarten"
      puts "Dismissal time for #{grade_number} is 1:00."
    else
      puts "Regular Grades are dismissed at 3:00."
    end
  end
end
kindergarten = Grade.new("Sarah", "kindergarten", 44, "Mrs. Mackey")
first = Grade.new("Jo-Bill", "first", 30, "Mr. Blah")
kindergarten.dismissal
first.dismissal
