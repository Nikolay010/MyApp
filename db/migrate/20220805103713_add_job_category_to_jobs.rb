# frozen_string_literal: true

class AddJobCategoryToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :job_category, null: false, foreign_key: true
  end
end
