class Listing < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "no_imaage.jpeg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  belongs_to :user
  has_many :orders
end
