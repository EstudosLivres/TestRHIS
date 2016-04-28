class Student < ActiveRecord::Base
  # Relations
  has_many :classrooms, dependent: :destroy
  has_many :courses, through: :classrooms

  # EnumerateIt
  extend EnumerateIt
  has_enumeration_for :status, with: Status

  # Rails validations
  validates :name, length: { maximum: 45 }, presence: true, on: [:create, :update]
  validates :register_number, length: { maximum: 45 }, presence: true, on: [:create, :update]
  validates :status, numericality: true, inclusion: { in: 0..10 }, presence: true, on: [:create, :update]
end