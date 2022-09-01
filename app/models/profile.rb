# frozen_string_literal: true

class Profile < ApplicationRecord
  include Discard::Model
  default_scope -> { kept }

  belongs_to :user
end
