class DesignersController < ApplicationController

    before_action :authenticate_user!, only: [:new]

    def index
    end

    def new
        @designer = Designer.new
    end

    def create
        @designer = Designer.new(designer_params)
        @designer.user_id = current_user.id
        @designer.save!
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
