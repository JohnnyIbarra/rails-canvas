class EnrollmentsController < ApplicationController
	before_action :set_course

	def inde
		@teachers = @course.enrollment.where(role: "Teacher")
		@tas = @course.enrollment.where(role: "Tas")
		@students = @course.enrollment.where(role: "Students")
  end

	def new
		@enrollment = @course.enrollments.new
	end
	
	def create 
		@enrollment = @course.enrollments.new(enrollment_params)
		if @enrollment.save
			redirect_to course_enrollments_path
		else
			render :new
		end
	end

	def destroy
		enrollment = @course.enrollment.find(params[:id])
		enrollment.destroy
		redirect_to course_enrollments_path
	end


	private
	def enrollment_params
		parmas.require(:enrollment).permit(:role, :user_id)
	end

	def set_course 
		@course = Course,.find(params[:id])
	end


end
