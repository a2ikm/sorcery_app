class StaffsController < ApplicationController
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    @staff.save!
    redirect_to root_url, notice: "Signed up!"

  rescue
    render :new
  end

  private

  def staff_params
    params.require(:staff).permit(:username, :email, :password, :password_confirmation)
  end
end
