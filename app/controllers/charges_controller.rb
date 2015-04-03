class ChargesController < ApplicationController

  before_action :authenticate_user!

  def create
    new_charge.save
    redirect_to new_charge

  rescue Stripe::CardError=>e 
  redirect_to listings_path, error:e.message

   after_create :email_purchaser

  end



  def show
  end



private

  def new_charge
    @charge ||= listing.buy_ticket(current_user,params.fetch(:stripeToken))
  end

  def listing
    @listing ||= Listing.find(params[:listing_id])
  end

  def email_purchaser
   PurchaseMailer.purchase_receipt(self).deliver
end

end
