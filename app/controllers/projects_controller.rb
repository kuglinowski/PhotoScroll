class ProjectsController < ApplicationController

	before_action :set_project, 
				  only: [ :edit, :show, :update, :destroy ]

	def index
		@project = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.save
		redirect_to projects_path 
	end	

	def edit
		
	end

	def show
		
	end

	def update
		@project.update_attributes(project_params)
		redirect_to projects_path
	end	

	def destroy
		@project.destroy
		redirect_to projects_path
	end

	private

		def project_params
			params.require(:project).permit(:title, :description)
		end

	def set_project
		@project = Project.find(params[:id])
	end
end