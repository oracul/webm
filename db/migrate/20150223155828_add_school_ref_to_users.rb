class AddSchoolRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :school, index: true
  end
end
