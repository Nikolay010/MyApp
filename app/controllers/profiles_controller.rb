class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path, notice: "Profile was successfully removed."
  end

  private

  def set_profile
    @profile = Profile.find(param[:id])
  end
end
