class RemoveRefFromMessagesToProject < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :messages, :projects
  end
end
