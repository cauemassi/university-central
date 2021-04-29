class CreateUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :acronyn
      t.string :description
      t.string :condition
      t.string :dependency_name
      t.string :uf
      t.date :creation_date

      t.timestamps
    end
  end
end
