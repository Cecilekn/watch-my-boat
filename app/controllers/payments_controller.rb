class PaymentsController < ApplicationController
  before_action :set_booking_and_package

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @booking.amount_cents,
      description:  "Paiement du pack #{@booking.title}; commande #{@booking.id}",
      currency:     @booking.amount.currency
    )

    @booking.update(payment: charge.to_json, paid: true)
    redirect_to dashboard_path

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_package_booking_payment_path(@package, @booking)
  end

  private

  def set_booking_and_package
    @booking = current_user.bookings.find(params[:booking_id])
    @package = Package.find(params[:package_id])
  end
end
