# This migration comes from blog_engine (originally 20240723081315)
class CreateBlogEnginePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :blog_engine_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
