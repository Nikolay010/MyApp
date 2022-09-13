# frozen_string_literal: true

FactoryBot.define do
  factory :visitor do
    email { Faker::Internet.email }
    password { SecureRandom.hex(8) }
    password_confirmation { SecureRandom.hex(8) }
  end
end