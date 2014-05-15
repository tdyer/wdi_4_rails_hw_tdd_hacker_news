class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :article, index: true
      t.datetime :submitted_at

      t.timestamps
    end
  end
end
