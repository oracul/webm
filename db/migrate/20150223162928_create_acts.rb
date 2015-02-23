class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :category
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
