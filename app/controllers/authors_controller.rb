class AuthorsController < ApplicationController

	def new
		@author = Author.new
		@author.books.build

	end

	def create
		@author = Author.new(author_params)
		@author.save

	end

	def index
		@authors = Author.all
	end

	def show
		@author = Author.find_by(params[:id])
	end

	private

	def author_params
		params.require(:author).permit(:name, books_attributes: [:id, :name, :book_no, :date])
	end
end
