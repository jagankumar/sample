class ActivitiesController < ApplicationController
	#before_action :set_activity, only: [:show, :edit, :update, :destroy]
	#before_action :set_movie
	#before_action :authenticate_employee!
	def new
		@activity = Activity.new
	end
	def index
		@activities = current_employee.activities
	end
	def create
		@activity = Activity.new(allow_params)
		@activity.employee_id = current_employee.id
		if @activity.save
			redirect_to @activity
		else
			render 'new'
		end

	end
	
    def edit
    end

    def update
    	@activity.update(allow_params)
    end
    def destroy
    	@activity.destroy
    end
    
	private
	def set_activity
		@activity = Activity.find(params[:id])
		end
		
	def allow_params
		params.require(:activity).permit(:date, :description, :task_id, :employee_id)
		end
end
