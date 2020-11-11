class DropUserDetailTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :user_details
  end
end
