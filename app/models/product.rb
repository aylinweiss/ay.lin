class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :prise, presence: true
end
