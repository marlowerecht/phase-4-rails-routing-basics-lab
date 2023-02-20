class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all
        students_grades = students.sort_by { |student| student.grade }
        render json: students_grades.reverse
    end

    def highest_grade
        students = Student.all
        students_grades = students.sort_by { |student| student.grade }
        render json: students_grades.last
    end

end
