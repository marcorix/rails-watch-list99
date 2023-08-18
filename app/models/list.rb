class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # @list.bookmarks.each
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true, presence: true
end
