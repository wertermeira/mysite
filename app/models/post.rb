class Post < ApplicationRecord
  has_one :image
  validates_presence_of :image, on: :create
  validates_presence_of :title, :description
  accepts_nested_attributes_for :image, allow_destroy: true
end
