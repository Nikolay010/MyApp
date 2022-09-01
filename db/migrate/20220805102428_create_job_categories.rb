# frozen_string_literal: true

class CreateJobCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :job_categories do |t|
      t.integer :category, null: false, default: 1

      t.timestamps
    end
  end
end
