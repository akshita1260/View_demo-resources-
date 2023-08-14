class BooksController < ApplicationController
  before_action do
    ActiveStorage::Current.url_options = { protocol: request.protocol, host: request.host, port: request.port }
  end

  def new 
    @book = Book.new
  end

  def showname
    render plain: "hello"
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "Book was successfully created"
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])

  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render "edit"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to action: :new
  end

  private

  def book_params
    params.require(:book).permit(:name, :book_no, :date, :image, :author_id)
  end

end
