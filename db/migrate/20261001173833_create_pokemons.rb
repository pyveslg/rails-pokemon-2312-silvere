class CreatePokemons < ActiveRecord::Migration[8.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :element_type

      t.timestamps
    end
  end
end
