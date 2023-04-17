class Api::V1::PostController < ApplicationController
    before_action :set_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.all
    render json: @posts, each_serializer: Api::V1::PostSerializer, status: :ok
  end

  def show
    render json: @post, serializer: Api::V1::PostSerializer, status: :ok
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, serializer: Api::V1::PostSerializer, status: :created
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @post.update(post_params)
      render json: @post, serializer: Api::V1::PostSerializer, status: :ok
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    head :no_content
  end

  def not_found
    render json: { error: 'Record not found' }, status: :not_found
  end
    
  def unauthorized
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
    
  def server_error
    render json: { error: 'Internal server error' }, status: :internal_server_error
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.permit(:title, :body)
    end
end
