class Lecture < ApplicationRecord
  has_and_belongs_to_many :timetables

  #completion_division = %w[공통 교양(공통기초) 교양(일반) 교직 기초 일반선택 전공 전공(기초) 전공(심화) 전공(핵심) 전공선택 전공필수]
  def self.get_refinement
    result = {}
    result["교양(공통기초)"] = where(open_completion_division: "교양(공통기초)")

    refinement_field = ["제1영역[언어,문학]", "제2영역[역사,철학]", "제3영역[사회,과학]", "제4영역[자연과학]", "제5영역[예술과체육]", "제6영역[융복합]"]
    refinement_field.each do |field|
      result[field] = where(open_completion_division: "교양(일반)").where(refinement_field: field[1])
    end
    return result
  end

  def self.get_major
    result = {}
    departments = []
    select(:department).distinct.each { |data| departments << data.department}

    departments.each do |department|
      result[department] = where(department: department).where.not(open_completion_division:  ["교양(일반)", "교양(공통기초)"])
    end

    return result
  end
end
