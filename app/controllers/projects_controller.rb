class ProjectsController < ApplicationController

    before_action :authenticate_user!, only: [:new]
    before_action :client_authorisation, only: [:create]
    before_action :message_index

    # Project Mechanisms

    def index
        @projects = Project.all
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
        @project = Project.find params[:id]
    end

    def edit
        @project = Project.find params[:id]
    end

    def update
        @project = Project.find params[:id]

        if @project.designer_id.nil?
            @project.update(designer_id: current_user.designer.id)
            @project.save!
        else
        end

        @project.update(project_status_params.to_h)
        @project.save!
    
        redirect_to project_path(@project)
    end

    def destroy
        @project = Project.find params[:id]

        @project.destroy

        redirect_to home_path
    end

    # ================================================================

    # Designer Mechanisms

    def remove_designer
        @project = Project.find params[:id]

        @project.update(designer_id: nil)
        @project.save!

        redirect_to project_path(@project)
    end

    # ================================================================

    # Messaging System

    def message_index
        @messages = Message.all
    end

    def message_create

        @project = Project.find params[:id]

        @message = Message.create(message_params)

        @message.update(project_id: @project.id)
        @message.update(message_content: params[:message_content])
        @message.save!

        redirect_to project_path(@project)

    end

    private

    # Project Authorisation Mechanisms

    def project_params
        params.require(:project).permit(:title, :description, :payment_status, :designer_status, :client_status, :project_status, :picture, :designer_id, :client_id, :authenticity_token) if params[:project]
    end

    def project_status_params
        params.require(:project).permit(:payment_status, :designer_status, :client_status, :project_status, :designer_id) if params[:project]
    end

    # Message Authorisation Mechanisms

    def message_params
        params.require(:message).permit(:project_id, :message_content) if params[:message]
    end

    # Client Authorisation Mechanisms

    def client_params
        params.require(:client).permit(:user_id)
    end

    def client_authorisation
        client = Client.find_by user_id: current_user.id
        if client.nil?
            redirect_to home_path
        end
    end

end

