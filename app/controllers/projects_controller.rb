class ProjectsController < ApplicationController

    before_action :authenticate_user!, only: [:new]
    before_action :client_authorisation, only: [:create]
    before_action :set_project

    def index
        @project
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.client_id = current_user.client.id
        if @project.save!
            redirect_to project_path(@project)
        end
    end

    def show
        @project = Project.find_by(id: params[:id])
    end

    def edit
        @project = Project.find_by(id: params[:id])
    end

    def update
        @project.update(designer_id: current_user.designer.id)
        @project.save!
        redirect_to project_path(@project)
    end

    def destroy
    end

    private

    def project_params
        params.require(:project).permit(:title, :description, :payment_status, :designer_id, :picture)
    end

    def set_project
        @project = Project.find_by(id: params[:id])
    end

    def client_authorisation
        client = Client.find_by user_id: current_user.id
        if client.nil?
            redirect_to home_path
        end
    end

end

