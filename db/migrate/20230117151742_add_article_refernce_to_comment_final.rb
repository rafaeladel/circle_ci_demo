class AddArticleRefernceToCommentFinal < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.references :article, null: false, foreign_key: true
    end
  end
end
