class AddPostNumberToPost < ActiveRecord::Migration
  def change
    add_column :posts, :post_number, :integer
  end
end
