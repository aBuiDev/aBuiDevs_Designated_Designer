class DesignersController < ApplicationController

    before_action :authenticate_user!, only: [:new]

    def index
    end

    def new
        @designer = Designer.new
    end

    def create
        @designer = Designer.new
        @client = Client.new
        if current_user.designer.nil?
            @designer = Designer.new(designer_params)
            @designer.user_id = current_user.id
            @designer.save!
        elsif current_user.client.nil?
            @client = Client.new(client_params)
            @client.user_id = current_user.id
            if @client.save!
                redirect_to projects_path
            end
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

    def designer_params
        params.permit(:user_id)
    end

    def client_params
        params.permit(:user_id)
    end
end
