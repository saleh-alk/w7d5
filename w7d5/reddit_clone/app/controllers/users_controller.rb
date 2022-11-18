class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def new
        :new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            render :show
        else
            flash.now["errors"] = ["Invalid username or password"]
            render :new
        end
    end

    def show
        render :show
    end


    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
