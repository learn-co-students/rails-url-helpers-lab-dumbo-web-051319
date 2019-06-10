class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  # def edit
  #   @student = Student.find(params[:id])
  #   @active = @student.active
  # end
  #
  # def update
  #   @student = Student.find(params[:id])
  #   byebug
  #   @student.update(params[:students].to_hash)
  #   redirect_to "/students/#{@student.id}"
  # end

  def activate
    set_student
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
