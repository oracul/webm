class CreateUserInteractions < ActiveRecord::Migration
  def change
    create_table :user_interactions do |t|
      t.integer :owner

      t.timestamps
    end
  end
end
