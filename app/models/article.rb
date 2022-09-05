# frozen_string_literal: true

class Article < ApplicationRecord
  include Discard::Model

  default_scope -> { kept }

  validates :title, presence: true
  validates :description, presence: true
end
