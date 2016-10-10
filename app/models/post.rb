class Post < ActiveRecord::Base
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :content,
            presence: true
  validates :user,
            presence: true


end
