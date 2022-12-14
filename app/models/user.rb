# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :services
  has_one_attached :avatar

  after_create :build_profile
  after_create :set_type

  def build_profile
    Profile.create(user: self)
  end

  def set_type
    User.update(type: "Visitor")
  end
end
