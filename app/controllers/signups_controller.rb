class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      flash[:notice] = "Thank you! We'll send you more information soon!"
      redirect_to '/'
    end
  end

  private
    def signup_params
      params.require(:signup).permit(:first_name, :last_name, :email)
    end
end
