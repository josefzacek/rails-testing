class AddSlugToCommentaries < ActiveRecord::Migration
  def change
    add_column :commentaries, :slug, :string
  end
end
