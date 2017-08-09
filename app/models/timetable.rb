class Timetable < ApplicationRecord
  has_and_belongs_to_many :lectures
end
