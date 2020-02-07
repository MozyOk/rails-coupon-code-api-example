class UsersController < ApplicationController
require 'coupon_code'
  # GET /users
  def index
    code = CouponCode.generate
    render :json => { code: code, status: :ok }
  end

end
