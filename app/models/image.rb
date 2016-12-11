require 'carrierwave/orm/activerecord'
class Image < ApplicationRecord
  belongs_to :post
  validates_presence_of :file, on: :create
  mount_uploader :file, ImagepostUploader


end
