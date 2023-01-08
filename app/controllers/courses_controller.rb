class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
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
