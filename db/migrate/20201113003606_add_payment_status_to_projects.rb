class AddPaymentStatusToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :payment_status, :integer
  end
end
