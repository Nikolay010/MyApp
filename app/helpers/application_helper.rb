# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  def user_avatar(user)
    if user.avatar.attached?
      user.avatar
    else
      gravatar_image_url(user.email)
    end
  end
end
