class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :position
      t.text :content
      t.integer :commentary_id

      t.timestamps null: false
    end
  end
end
