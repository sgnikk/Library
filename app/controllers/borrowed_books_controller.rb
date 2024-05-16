class BorrowedBooksController < ApplicationController
    def index
      @borrowed_books = BorrowedBook.includes(:book, :user)
    end
  end
  