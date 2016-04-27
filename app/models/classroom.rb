class Classroom < ActiveRecord::Base
  # Relations
  belongs_to :course
  belongs_to :student

  # Rails validations
  validates_presence_of :entry_at, on: [:create, :update]
  validates_presence_of :course_id, on: [:create, :update]
  validates_presence_of :student_id, on: [:create, :update]

  # Setup attributes
  before_validation :setup

  private
    # Setup attributes which are dynamic
    def setup
      self.entry_at = Time.now
    end
end