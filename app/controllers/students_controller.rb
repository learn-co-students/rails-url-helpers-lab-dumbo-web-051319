require "pry"
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @active = @student.active
  end

  def edit
    @student = Student.find(params[:id])
    @active = @student.active
  end

  def update
    # binding.pry
    @student = Student.find(params[:id])
    @student.update(params[:students].to_hash)
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
