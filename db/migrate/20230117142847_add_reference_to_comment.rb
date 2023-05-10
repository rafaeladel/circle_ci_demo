class AddReferenceToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference(:articles, :comments)
  end
end
