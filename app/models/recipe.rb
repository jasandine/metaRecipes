class Recipe < ActiveRecord::Base
  has_attached_file :image, styles: { large: "200x200" }
  ratyrate_rateable 'overall'
  belongs_to :user
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end