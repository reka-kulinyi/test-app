class Product < ApplicationRecord
  belongs_to :user
  has_many :prices, dependent: :destroy
  validates :name, presence: true
  serialize :features
end
