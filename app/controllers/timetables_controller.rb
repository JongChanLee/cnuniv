class TimetablesController < ApplicationController
  def index
    refinements = Lecture.get_refinement
    major = Lecture.get_major

    @data = refinements.merge(major)
  end

  def create
    
    redirect_to timetables_path
  end

  def update

  end

  def destroy

  end

end
