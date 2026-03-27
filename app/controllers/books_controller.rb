class BooksController < ApplicationController
  allow_unauthenticated_access only: %i[index show]
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def show
  end
end
