class Hotel < ApplicationRecord
	belongs_to :prefecture
	mount_uploader :picture, PictureUploader
	has_many :reviews
end
