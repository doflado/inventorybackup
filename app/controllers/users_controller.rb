class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show]

    def verify
        token = request.headers["Authorization"].split(" ")[1]
        #byebug
        if Warden::JWTAuth::UserDecoder.new.call(token, :user, nil)
            render json: current_user
        end
    end

    def index
        users = User.all
        byebug
        render json: users
    end

    def create
    end

    def show
        render json: current_user
    end

    def destroy

    end
end
