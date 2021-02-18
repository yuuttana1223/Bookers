class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @books = Book.all
  end

  def show
  end

  def new
  end

  def update
  end

  def edit
  end

  def create
  end

  def destroy
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end
end
