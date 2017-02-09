class RenameDoseToIngredient < ActiveRecord::Migration[5.0]
  def change
    remove_reference :doses, :dose, index: true, foreign_key: true
  end
end
