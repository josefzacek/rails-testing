class AddPriceToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :price, :float
  end
end
