class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @students = User.page params[:page]
  end

  def show
    @student = User.find(params[:id])
    @courses = @student.courses.page params[:page]
  end
end
