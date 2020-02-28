class Instrument < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :name, presence: true
  validates :inst_type, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
