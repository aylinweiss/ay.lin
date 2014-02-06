class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :prise, presence: true
	validates :image, presence: true

	belongs_to :user
	mount_uploader :image, ImageUploader
end
