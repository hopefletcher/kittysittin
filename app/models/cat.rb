class Cat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo, dependent: :destroy
  validates_presence_of :name, :location, :age, :description, :pay
end
