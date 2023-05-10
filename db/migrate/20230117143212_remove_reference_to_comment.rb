class RemoveReferenceToComment < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:articles, :comments)
  end
end
