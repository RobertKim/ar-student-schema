require_relative '../../db/config'
# implement your Student model here


class Student < ActiveRecord::Base
  
  # attr_accessor :first_name, :last_name, :gender, :birthday

  def name
    "#{first_name} #{last_name}"
  end
  
  def age
    Time.new.year - birthday.year - 1
  end

end

# student = Student.new(first_name: 'Rob', last_name: 'Kim', birthday: Date.new(1978, 11, 03))

# p student.name
# p student.age