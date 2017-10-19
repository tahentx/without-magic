class StudentsController < ApplicationController
  def index
  	@students = Student.order(:name)
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
	@student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
    	redirect_to @student
    else
    	render :new
    end
  end


  def edit
    @student = find_student
  end

def update
  @student = find_student
  if @student.update(student_params)
    redirect_to @student
  else
    render :edit
  end
end

def destroy
    @student = find_student
    @student.destroy
    redirect_to students_url
end


# no view associated with update

  private 

  def find_student
    Student.find(params[:id])
  end

  def student_params
	params.require(:student).permit(:name)
  end
end
