class PostsController < ApplicationController

    # def new
    #     @post = Post.all
    #     render :new
    # end

    def show
       render :show
    end

    def create
        if logged_in?
            @post = Post.new(post_params)
            @post.author_id = current_user.id
            @user = User.find_by(id: current_user.id)
            if @post.save
                render :show
            else
                flash.now["errors"]= @post.errors.full_messages
                
                render "/users/show"
            end
        else
            redirect_to new_session_url
        end
    end

    def edit
        @post = Post.find_by(id: params[:id])
        render :edit


    end


    def update


    end



    private
    def post_params
        params.require(:post).permit(:title, :url, :content)
    end

end
