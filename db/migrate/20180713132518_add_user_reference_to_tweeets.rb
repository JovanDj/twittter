# frozen_string_literal: true

class AddUserReferenceToTweeets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tweeets, :user, foreign_key: true
  end
end
