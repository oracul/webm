class AddUserInteractionRefToActs < ActiveRecord::Migration
  def change
    add_reference :acts, :userinteraction, index: true
  end
end
