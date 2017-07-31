class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :department                                            # 개설학과
      t.integer :school_year                                          # 학년
      t.integer :lecture_num                                          # 과목번호
      t.integer :division_group                                       # 분반
      t.string :subject_name                                          # 과목명
      t.string :open_completion_division                              # 개설이수구분(교양, 전공, 교직 등등)
      t.string :grades_time                                           # 학점/시수
      t.string :professor                                             # 담당 교수
      t.string :lecture_time                                          # 강의 시간
      t.boolean :english, default: false                              # 영어 강좌, 영어 강좌이면 true가 들어감
      t.integer :refinement_field                                     # 교양 영역 - 교양이면 몇 영역인지 숫자만 들어감
      t.string :class_type                                            # 수업 유형 - 이론/실습
      t.boolean :assessment_type_grade, default: false                # 평가 영역 - GRADE 방식이면 true를 저장, Pass/Fail이면 False를 저장
      t.boolean :relative_grade, default: false                       # 절대 평가/상대평가 - 상대 평가이면 true를 저장, 절대 평가이면 false를 저장
      #사이버 강의

    end
  end
end
