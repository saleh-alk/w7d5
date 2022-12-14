class UsersController < ApplicationController
    def index
        @user = User.all

    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            redirect_to user_url(@user)
        else

            flash.now["errors"] = ["Invalid username or password"]
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @post = Post.new
        render :show
    end


    private
    def user_params

        params.require(:user).permit(:username, :password)
    end
end
