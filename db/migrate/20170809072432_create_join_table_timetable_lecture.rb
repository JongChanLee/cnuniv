class CreateJoinTableTimetableLecture < ActiveRecord::Migration[5.1]
  def change
    create_join_table :lectures, :timetables do |t|
      # t.index [:lecture_id, :timetable_id]
      # t.index [:timetable_id, :lecture_id]
    end
  end
end
