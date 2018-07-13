# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  factory :tweeet do
    content FFaker::BaconIpsum.unique.phrase
    user
  end
end
