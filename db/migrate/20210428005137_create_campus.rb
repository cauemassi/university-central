class CreateCampus < ActiveRecord::Migration[5.0]
  def change
    create_table :campus do |t|
    	t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.references :university, foreign_key: true, null: false

      t.timestamps
    end
  end
end
