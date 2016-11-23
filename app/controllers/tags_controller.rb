class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Taggen '#{@tag.name}' er blitt slettet."
		redirect_to action: 'index'
	end
end
