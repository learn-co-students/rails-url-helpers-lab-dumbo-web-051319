class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    # set_student
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
    else
      # @student.active == false
      @student.active = true
    end
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end


end
