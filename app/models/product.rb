class Product < ApplicationRecord
    belongs_to :category
    mount_uploader :image, ImageUploader

    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :quantity, presence: true


end
