class Product < ApplicationRecord
    belongs_to :category
    mount_uploader :image, ImageUploader
    has_many :photos
    has_many :reviews

    accepts_nested_attributes_for :photos

    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :quantity, presence: true


end
