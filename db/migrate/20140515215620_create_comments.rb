class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.datetime :submitted_at, null: false
      t.belongs_to :article, index: true

      t.timestamps
    end
  end
end
