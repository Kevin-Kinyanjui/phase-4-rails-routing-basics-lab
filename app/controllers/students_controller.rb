class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
      
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end
      
    def highest_grade
        top_grade = Student.maximum(:grade)
        top_student = Student.find_by(grade: top_grade)
        render json: top_student
    end
end
