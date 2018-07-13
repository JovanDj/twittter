# frozen_string_literal: true

class Tweeet < ApplicationRecord
  validates :content, length: { minimum: 1, maximum: 100 }, allow_blank: false, presence: true

  belongs_to :user
end
