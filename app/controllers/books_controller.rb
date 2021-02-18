class BooksController < ApplicationController
  before_action :set_books, only: [:index, :create]
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_update_btn_name, only: [:edit, :update]
  before_action :set_create_btn_name, only: [:index, :create]

  def index
    @book = Book.new
  end

  def show
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      render "index"
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:success] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render "edit"
    end
  end

  def destroy
    @book.destroy
    flash[:success] = "Book was successfully destroyed."
    redirect_to books_path
  end

  private
    def set_books
      @books = Book.all
    end

    def set_book
      @book = Book.find(params[:id])
    end

    def set_update_btn_name
      # 送信ボタンの文字
      @submit_name = "Update Book"
    end

    def set_create_btn_name
      @submit_name = "Create Book"
    end

    def book_params
      params.require(:book).permit(:title, :body)
    end
end
