class AddVisitorIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :visitor_id, :integer
  end
end
