class Topic < ApplicationRecord
	belongs_to :user
	has_many :thread_categories
	has_many :categories, through: :thread_categories
	has_many :responses
	accepts_nested_attributes_for :thread_categories

	validates :title, presence: true, length: { maximum: 100 }
	validates :body, presence: true, length: { maximum: 200 }

	def Topic.search(search)
          Topic.includes(:responses).where(['title LIKE ? OR body LIKE ? OR responses.comment LIKE ?', "%#{search}%","%#{search}%","%#{search}%"]).references(:responses)
    end
end
