class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.references :author, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.text :metaphore
      t.date :published_date

      t.timestamps null: false
    end
  end
end
