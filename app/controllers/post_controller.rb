class PostController < ApplicationController

	def index

		@Posts = Post.all
	end

	def new
		@Posts = Post.new

	end

	def create
	    @Posts = Post.new(film_params)
	    if @Posts.save
	      redirect_to @Posts
	    else
	      render 'new'
	    end
		
	end


	private

	def posts_params
		params.require(:film).permit(:title, :description);
	end
end
