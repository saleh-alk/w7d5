class SubsController < ApplicationController

    def new
        render :new
    end

    def show
        @sub = Sub.find_by(id: params[:id])
        render :show
    end

    def create
        @sub = Sub.new
        @sub.moderator_id = params[:moderator_id]
        if @sub.save
            render :show
        else
            flash.now["errors"] = ["Title can't be blank"]
            render :new
        end
    end



    private

    def sub_params
        params.require(:sub).permit(:title, :description)
    end
end
