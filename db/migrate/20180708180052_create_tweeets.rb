# frozen_string_literal: true

class CreateTweeets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweeets do |t|
      t.text :content

      t.timestamps
    end
  end
end
