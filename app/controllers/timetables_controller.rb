class TimetablesController < ApplicationController
  def index
    refinements = Lecture.get_refinement
    major = Lecture.get_major

    @data = refinements.merge(major)
  end

  def create
    timetable = Timetable.new
    timetable.name = "test"
    lectures = params[:lectures]
    unless lectures
      redirect_to timetables_path
      return
    end
    lectures.each do |lecture|
      timetable.lectures << Lecture.where(lecture_num: lecture.split("-")[0].to_i).where(division_group: lecture.split("-")[1].to_i)
    end
    timetable.save

    redirect_to timetables_path
  end

  def update

  end

  def destroy

  end

end
