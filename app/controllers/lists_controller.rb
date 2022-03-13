class ListsController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/:id'
  end
  
  def index
    @books = Book.all
  end

    private
  # ストロングパラメータ
  def book_params
    params.permit(:title, :body)
    #.require(:book)
  end
end
