# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/monthly-visit
  def monthly_visit
    BookingMailer.monthly_visit(Booking.first)
  end

end
