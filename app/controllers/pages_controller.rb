class PagesController < ApplicationController

	def home
		@posts = Post.paginate(:page => params[:page],:per_page => 2).order(created_at: :desc)
	end 

	def user

	end
end
