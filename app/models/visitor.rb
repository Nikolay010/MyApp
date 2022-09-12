# frozen_string_literal: true

class Visitor < User

  has_many :articles

  validates :email, presence: true

  before_save { self.email = email.downcase }
end
