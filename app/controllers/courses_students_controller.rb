class CoursesStudentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @course = Course.find_by(id: params[:course_id])
    @student_courses = current_user.courses

    if !student_enrolled?(@student_courses, @course)
      @student_courses << @course
      flash[:notice] = "Succesfully enrolled in the course"
      return redirect_to course_path(@course)
    else
      flash[:alert] = @course.nil? ? "Course doesn't exist" : "You are enrolled in this course already"
      return redirect_to courses_path
    end
  end

  def destroy
    course_student = CourseStudent.find_by(user_id: params[:id], course_id: params[:course_id])
    if course_student
      course_student.destroy
      flash[:notice] = "You are no longer a member of the course"
      redirect_to courses_path
    else
      flash[:alert] = "You can't leave a course you are not a part of"
      redirect_to courses_path
    end
  end

  private

  def student_enrolled?(student_courses, course)
    student_courses.find_by(id: course.id)
  end
end
