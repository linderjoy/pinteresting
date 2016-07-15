class Pin < ApplicationRecord
	belongs_to :user

	has_attached_file :image, :styles => { :large => "800x800", :medium => "300x300>", :thumb => "100x100>" }
	validates :image, presence: true
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :description, presence: true
end
