require 'launchy'
class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement

  def initialize(name, address, number_of_students, founding_years,
                 introduction_video_url, introduction_statement)
    self.name = name
    self.address = address
    self.number_of_students = number_of_students
    self.founding_years = founding_years
    self.introduction_video_url = introduction_video_url
    self.introduction_statement = introduction_statement
  end

  def video_url
    Launchy.open(self.introduction_video_url)
  end
end
# A学校用のインスタンスを作成
a_school = School.new('A学校', '東京都渋谷区..', 300, 100, 'https://diveintocode.jp/', 'A学校は自然豊かな...')
puts(a_school.name)
puts(a_school.address)
puts(a_school.number_of_students)
puts(a_school.founding_years)
puts(a_school.introduction_video_url)
puts(a_school.introduction_statement)
puts(a_school.instance_variables)

a_school.video_url()
