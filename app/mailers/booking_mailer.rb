class BookingMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.monthly-visit.subject

  def monthly_visit(booking)
    @booking = booking

    mail(
      to:       @booking.boat.owner.email,
      subject:  "Compte rendu de la visite de #{@booking.boat.name}"
    )
  end
end
