class AddActReferenceToUserInteractions < ActiveRecord::Migration
  def change
    add_reference :user_interactions, :act, index: true
  end
end
