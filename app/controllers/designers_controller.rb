class DesignersController < ApplicationController

    before_action :authenticate_user!, only: [:new]

    def index
    end

    def new
        @designer = Designer.new
    end

    def create
        @designer = Designer.new
        if current_user.designer.nil?
            @designer = Designer.new(designer_params)
            @designer.user_id = current_user.id
            if @designer.save!
                redirect_to projects_path
            end
        else
            redirect_to projects_path
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
end
