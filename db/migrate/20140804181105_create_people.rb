class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :sex
      t.references :father, index: true
      t.references :mother, index: true
      t.references :current_spouse, index: true

      t.timestamps
    end
    add_index :people, :sex
  end
end
