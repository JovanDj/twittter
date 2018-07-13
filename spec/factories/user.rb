# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }

    password FFaker::Internet.unique.password
  end
end
