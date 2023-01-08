class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @students = User.all
  end

  def show
    @student = User.find(params[:id])
  end
end
