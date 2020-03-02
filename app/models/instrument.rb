class Instrument < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :name, presence: true
  validates :inst_type, presence: true
  validates :price, presence: true

  include PgSearch::Model
  multisearchable against: [:user]
  has_many_attached :photo
end
 
