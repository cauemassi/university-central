class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
    	t.string :name
      t.string :description
      t.string :difficulty
      t.references :university, foreign_key: true, null: false

      t.timestamps
    end
  end
end
