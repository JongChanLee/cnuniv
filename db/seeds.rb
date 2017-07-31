require 'roo'
require 'roo-xls'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xlsx = Roo::Spreadsheet.open('D:/sheet.xls')
sheet = xlsx.sheet(0)

ApplicationRecord.transaction do
  3.upto(3276) do |i|
    row = sheet.row(i)

    lecture = Lecture.new
    lecture.department = row[0]
    lecture.school_year = row[1]
    lecture.lecture_num = row[2]
    lecture.division_group= row[3]
    lecture.subject_name= row[4]
    lecture.open_completion_division = row[5]
    lecture.grades_time = row[7]
    lecture.professor = row[8]
    lecture.lecture_time = row[10]
    lecture.english = true if (row[12] == "Y")
    lecture.refinement_field = row[15][1]
    lecture.class_type = row[16]
    lecture.assessment_type_grade = true if (row[17] == "GRADE")
    lecture.relative_grade = true if (row[18] == "상대평가")

    lecture.save

  end
end