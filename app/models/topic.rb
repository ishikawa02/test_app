class Topic < ApplicationRecord
	belongs_to :user
	has_many :thread_categories
	has_many :categories, through: :thread_categories
	has_many :responses
end
