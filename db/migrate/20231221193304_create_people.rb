class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :rank
      t.date :fall_date
      t.string :heb_fall_date
      t.string :burial_place
      t.string :ken
      t.string :garin

      t.timestamps
    end
  end
end
