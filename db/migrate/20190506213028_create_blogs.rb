class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :story
      t.string :author

      t.timestamps
    end
  end
end
