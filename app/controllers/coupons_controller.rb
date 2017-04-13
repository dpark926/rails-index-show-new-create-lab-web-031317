class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
		@coupon = Coupon.new
	end

  def show
    @coupon = Coupon.find(params[:id])
  end

	def create
	  @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    # @coupons = Coupon.all
    redirect_to coupon_path(@coupon)
	end

  # def edit
  #   @coupon = Coupon.find(params[:id])
  # end
  #
  # def update
  #   @coupon = Coupon.find(params[:id])
  #   @coupon.update(coupon_code: params[:coupon_code], store: params[:store])
  #   redirect_to artist_path(@coupon)
  # end

  # private
  #
  # def artist_params
  #   params.require(:artist).permit(:name, :bio)
  # end
end
