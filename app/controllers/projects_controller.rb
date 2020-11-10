class ProjectsController < ApplicationController

    def index
        
    end

    def new
        @project = Project.new
    end

    def create
        project = Project.create(permitted_params)
        redirect_to projects_show_path(project)
    end

    def show
        @project = Project.find(params[:id])
    end

    def edit
    end

    def delete
    end

    private

    def permitted_params
        params.permit(:title, :description)
    end

end
