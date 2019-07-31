class Tweet < ApplicationRecord
	belongs_to :user

	validates :message, presence: true
	validates :message, length: {maximum: 140, too_long: "That tweet is too long. It must be 140 characters or less."}
end
