class AddUserRefToUserInteractions < ActiveRecord::Migration
  def change
    add_reference :user_interactions, :user, index: true
  end
end
