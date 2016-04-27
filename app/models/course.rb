class Course < ActiveRecord::Base
  # Relations
  has_many :classrooms
  has_many :students, through: :classrooms

  # Rails validations
  # TODO move magic numbers to enumerate paradigm
  validates :name, length: { minimum: 1, maximum: 45 }, on: [:create, :update]
  validates :description, length: { minimum: 1, maximum: 45 }, on: [:create, :update]
  validates :status, numericality: true, inclusion: { in: 0..10 }, on: [:create, :update]
end
