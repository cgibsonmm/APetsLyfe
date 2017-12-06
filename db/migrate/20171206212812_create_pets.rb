class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :type
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
