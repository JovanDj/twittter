# frozen_string_literal: true

class Tweeet < ApplicationRecord
  validates_presence_of :content
  validates :content, length: {minimum: 1, maximum: 100}, allow_blank: false

end
