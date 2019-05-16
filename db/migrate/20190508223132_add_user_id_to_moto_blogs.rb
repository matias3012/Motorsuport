class AddUserIdToMotoBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :moto_blogs, :user_id, :integer
  end
end
