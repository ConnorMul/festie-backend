class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def create
        image = Cloudinary::Uploader.upload(params[:image])
        post = Post.create(post_params)
        render json: post
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post
    end

    def destroy
        id = params[:id]
        Cloudinary::Uploader.destroy(id)
        post = Post.find(params[:id])
        post.destroy
        render json: post
    end

    private

    def post_params
        params.permit(:image, :caption, :festival_id, :user_id, :user, :festival)
    end

end
