class CreateCommentaries < ActiveRecord::Migration
  def change
    create_table :commentaries do |t|
      t.string :title
      t.integer :position

      t.timestamps null: false
    end
  end
end
