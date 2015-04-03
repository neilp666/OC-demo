class Listing < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "no_imaage.jpeg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  belongs_to :user
  has_many :orders

  def price_in_pence
    price * 100
  end

  def buy_ticket(user,stripe_id)
    user.charges.create listing:self,amount:price_in_pence,stripe_id:stripe_id
  end

end
