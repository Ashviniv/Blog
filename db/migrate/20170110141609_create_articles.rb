class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :content
      t.string :author

      t.timestamps null: false
    end
  end
end
