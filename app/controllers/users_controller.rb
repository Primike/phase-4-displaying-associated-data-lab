class UsersController < ApplicationController
    def show 
        user = User.find(params[:id])
        if user
            render json: user, include: :items
        else
            render json: { error: "Bird not found" }, status: :not_found
        end
    end
end
