class AddNameToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :author ,:string
    add_column :articles, :date ,:datetime
  end
end
