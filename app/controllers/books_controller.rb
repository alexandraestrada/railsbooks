class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
		if @book.save
		 	redirect_to action: 'index'
		 	flash[:notice] = "You're notice was saved successfully" 
		else 
			render action: 'new'
		end
  end

  private
  	def book_params
		params.require(:book).permit(:title, :author, :publication, :ISBN, :genre)
	end

end
