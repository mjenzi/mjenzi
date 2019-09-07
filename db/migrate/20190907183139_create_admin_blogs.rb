class CreateAdminBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_blogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
