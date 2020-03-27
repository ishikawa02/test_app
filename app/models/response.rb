class Response < ApplicationRecord
	belongs_to :user
	belongs_to :topic

	validates :comment, presence: true, length: { maximum: 200 }
end
