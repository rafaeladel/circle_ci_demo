class RemoveReferenceToArticle < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:comments, :article)
  end
end
