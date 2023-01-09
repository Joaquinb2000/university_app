class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @courses = Course.all
    @student_courses = []
    if user_signed_in?
      @student_courses = current_user.courses.map{|course| course.id}
    end
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
  end
end
