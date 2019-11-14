class TodolistsController < ApplicationController

      # validates :title, :body, presence: true

  def index
  	  @books = Book.all
      @book = Book.new
  end

  def create
  	  book = Book.new(book_params)
  	  if book.save
  	      redirect_to todolist_path(book.id), notice: "Your comment was successfully posted."
  	  else
        redirect_to todolist_path, notice: "You should type title and body."

  end

  def show
  	  @book = Book.find(params[:id])
  end

  def edit
  	  @book = Book.find(params[:id])
  end

  def update
      book = Book.find(params[:id])
      book.update(book_params)
      redirect_to todolist_path(book.id), notice: "Your comment was successfully updated."
  end

  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to todolists_path
  end

  private
  def book_params
  	  params.require(:book).permit(:title, :body)
  end

end
