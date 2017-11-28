class ReservationsController < ApplicationController

  def new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @listing = Listing.find(params[:listing_id])

    @reservation = @listing.reservations.create(reservation_params)          
      redirect_to @reservation.listing, notice: "予約が完了しました。予約した彼女から折り返しラインでご連絡させていただきます" 
  end



  private
    def reservation_params
      params.require(:reservation).permit(:listing_id, :lineid, :place, :name, :email, :date1, :date2, :date3)
    end
end
