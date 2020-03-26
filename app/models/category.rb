class Category < ApplicationRecord
	has_many :thread_categories
	has_many :topics, through: :thread_categories

	validates :name, uniqueness: true
	validates :name, presence: true
end
