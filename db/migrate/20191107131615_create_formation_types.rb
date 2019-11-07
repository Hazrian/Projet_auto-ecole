class CreateFormationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :formation_types do |t|
      t.integer :place_number
      t.string :name

      t.timestamps
    end
  end
end
