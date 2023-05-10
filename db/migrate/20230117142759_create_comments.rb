class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
