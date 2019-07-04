class School
 attr_accessor :name, :address, :number_of_students, :founding_years, :introduction_video_url, :introduction_statement
end

a_school = School.new
a_school.name = "A学校"
a_school.address = "東京都渋谷区..."
a_school.number_of_students = 300
a_school.founding_years = 100
a_school.introduction_video_url = "https://hoge.com"
a_school.introduction_statement = "A学校は自然豊かな..."


b_school = School.new
b_school.name = "B学校"
b_school.address = "東京都新宿区.."
b_school.number_of_students = 500
b_school.founding_years = 30
b_school.introduction_video_url = "https://foo.com"
b_school.introduction_statement = "B学校は文武両立で..."

puts(a_school.name)
puts(b_school.name)
