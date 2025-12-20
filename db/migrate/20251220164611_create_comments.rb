class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
    add_index :comments, :commentable_id
  end
end
