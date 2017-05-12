class PostController < ApplicationController


	def new
		@Posts = Post.new
	end

	def create
		@Posts = Post.new(params[:post].permit(:title, :text))
    	@Posts.save
    	if @Posts.save
    		redirect_to :action => :showby, :id => @Posts.id
    	else
    		render 'new'
    	end
	end

	def show
		@Posts = Post.all
	end

	def showby
		@Posts = Post.find(params[:id])
	end


	def edit
		@Posts = Post.find(params[:id])
	end


	def update
		
	end


	private
	def article_params
		params.require(:article).permit(:title, :text)		
	end

end
