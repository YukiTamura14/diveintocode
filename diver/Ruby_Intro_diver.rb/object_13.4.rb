class School
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
end

# A学校用のインスタンスを作成
a_school = School.new("A学校")
puts(a_school.name)

# B学校用のインスタンスを作成
b_school = School.new("B学校")
puts(b_school.name)
puts(b_school.instance_variables)
