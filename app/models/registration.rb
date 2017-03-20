class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def self.order_by_creation_date
    order(created_at: :asc)
  end


end
