class Book < ApplicationRecord
  belongs_to :author
  has_many :borrowed_books
  validates :title, presence: true
  validates :description, presence: true

  def available_to_borrow?
    # Implement your logic here to determine if the book is available to borrow
    # For example, you might check if the book has already been borrowed
    # You can customize this logic based on your requirements
    # For now, let's assume the book is available if it has not been borrowed by anyone
    !BorrowedBook.exists?(book_id: id)
  end
end
