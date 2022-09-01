# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path, notice: 'Profile was successfully removed.'
  end

  def discard
    @profile.discard
    redirect_to profiles_path, notice: 'Profile was successfully deleted.'
  end

  def restore
    @profile.undiscard
    redirect_to profiles_path, 'Profile was restored'
  end

  private

  def set_profile
    @profile = Profile.find(param[:id])
  end
end
