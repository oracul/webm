class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
