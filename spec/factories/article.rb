# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Artist.name }
    description { Faker::Restaurant.description }
  end
end