class HomeController < ApplicationController
  def timetable

  end

  def index
    refinements = Lecture.get_refinement
    major = Lecture.get_major

    @data = refinements.merge(major)
  end
end
