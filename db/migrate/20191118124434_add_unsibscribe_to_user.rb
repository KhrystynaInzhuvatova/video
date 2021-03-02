class AddUnsibscribeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :unsibscribe, :boolean, deault: false
  end
end
