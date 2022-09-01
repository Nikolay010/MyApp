# frozen_string_literal: true

class JobCategory < ApplicationRecord
  has_one :job

  enum category: {
    "home": 1,
    "parents": 2,
    "office": 3,
    "friend": 4,
    "shopping": 5
  }
end
