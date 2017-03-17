class AddStatusToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :status, :string
  end
end
