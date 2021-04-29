class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :description
      t.string :occupation_area
      t.references :university, foreign_key: true, null: false

      t.timestamps
    end
  end
end
