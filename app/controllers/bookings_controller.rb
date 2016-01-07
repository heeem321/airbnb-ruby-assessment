
post '/bookings/create' do
  @booking = Booking.new(arrive: params[:arrive], depart: params[:depart], user_id: session[:user_id],property_id: params[:id]) 
  byebug
end