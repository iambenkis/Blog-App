class PostsController < ApplicationController
    def index

    end

    def show
        Post.find(params[:id])
    end
end
