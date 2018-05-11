class AddIsActiveToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :is_active, :boolean, default: true, null: false
  end
end
