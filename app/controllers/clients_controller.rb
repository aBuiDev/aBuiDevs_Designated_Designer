class ClientsController < ApplicationController

    before_action :authenticate_user!, only: [:new]

    def index
    end

    def new
        @client = Client.new
    end

    # Creation of Client & Designer by Association with User Model
    def create
        if current_user.client.nil?
            @client = Client.new(client_params)
            @client.user_id = current_user.id
            @client.save!
        end
        if current_user.designer.nil?
            @designer = Designer.new(designer_params)
            @designer.user_id = current_user.id
            @designer.save!
            redirect_to new_project_path(@client)
        else
            redirect_to new_project_path(@client)
        end
    end

    def edit
    end

    def show

    end

    def update
    end

    def destroy
    end

    private

    def client_params
        params.permit(:user_id)
    end

    def designer_params
        params.permit(:user_id)
    end
end
