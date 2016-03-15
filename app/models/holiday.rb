class Holiday < ActiveRecord::Base
  validates :name, presence: true
  validates :date, presence: true
  has_many :poems, dependent: :destroy
end