# frozen_string_literal: true

class AddDiscardedAtToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :discarded_at, :datetime
    add_index :profiles, :discarded_at
  end
end
