class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :categories
  has_many :photos, dependent: :destroy
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user



  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  def bargain?
    price < 30
  end

  def self.order_by_price
    order(:price)
  end

  def self.alphabetized
    order(name: :asc)
  end

  scope :published, -> {where(active: true)}

  def self.starts_before_and_ends_after(start_date, end_date)
    where('starts_at < ? AND ends_at > ?', start_date, end_date)
  end

  def self.starts_on(start_date)
    where('starts_at = ?', start_date)
  end

  def self.ends_on(end_date)
    where('ends_at = ?', end_date)
  end


end
