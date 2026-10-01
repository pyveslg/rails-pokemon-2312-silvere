class CreatePokeballs < ActiveRecord::Migration[8.1]
  def change
    create_table :pokeballs do |t|
      t.string :location
      t.date :caught_on
      t.references :trainer, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
