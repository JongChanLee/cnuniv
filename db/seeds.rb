# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xlsx = Roo::Spreadsheet.open('/home/ubuntu/workspace/public/sheet.xls')
sheet = xlsx.sheet(0)

ApplicationRecord.transaction do
  3.upto(100) do |i|
    row = sheet.row(i)

    lecture = Lecture.new
    lecture.department = row[0]
    lecture.grade = row[1]
    lecture.name = row[4]
    lecture.professor = row[8]
    lecture.save

  end
end