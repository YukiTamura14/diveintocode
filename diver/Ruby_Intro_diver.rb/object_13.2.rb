class School
  # name=というインスタンスメソッドを定義する
  def name=(value)
    @name = value
  end

  def name
    #　インスタンス変数のため、メソッド間で使用できる
    @name
  end
end

school = School.new
school.name = "A学校"
puts (school.name)
