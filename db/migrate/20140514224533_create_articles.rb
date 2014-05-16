class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.datetime :submitted_at, null: false

      t.timestamps
    end
  end
end
