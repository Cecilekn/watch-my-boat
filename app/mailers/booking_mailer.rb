class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.monthly-visit.subject
  #
  def monthly_visit
    @booking = params[:booking]

    mail(
      to:       @booking.boat.user.email,
      subject:  "Compte rendu de la visite de #{@boat.name}"
    )
  end
end
