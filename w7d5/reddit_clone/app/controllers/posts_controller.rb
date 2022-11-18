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
            @post.author_id = params[:author_id]

            if @post.save
                render :show
            else
                flash.now["errors"]= ["needs a title"]
                render :new
            end
        else
            redirect_to new_session_url
        end
    end



    private
    def post_params
        params.require(:post).permit(:title, :url, :content)
    end

end
