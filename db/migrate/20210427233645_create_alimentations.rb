class CreateAlimentations < ActiveRecord::Migration[5.0]
  def change
    create_table :alimentations do |t|
    	t.string :name
      t.string :description
      t.references :university, foreign_key: true, null: false

      t.timestamps
    end
  end
end
