class ClientsController < ApplicationController

    before_action :authenticate_user!, only: [:new]

    def index
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        @client.user_id = current_user.id
        if @client.save!
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
end
