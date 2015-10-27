class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end

  def self.up
    change_column :posts, :body, :text, :limit => nil
  end

end
