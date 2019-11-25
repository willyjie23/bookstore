class Book < ApplicationRecord

	validates :title, presence: true
	validates :isbn, :isbn13, presence: true, uniqueness: true
	validates :list_price, :sell_price, :page_num, numericality: {greater_than: 0}

	has_one_attached :cover_image
	
	belongs_to :publisher
end