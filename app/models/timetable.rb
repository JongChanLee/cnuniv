class Timetable < ApplicationRecord
  has_and_belongs_to_many :lectures
  belongs_to :user
end
