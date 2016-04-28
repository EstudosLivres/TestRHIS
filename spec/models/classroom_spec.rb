require 'rails_helper'

RSpec.describe Classroom, type: :model do
  context 'Dynamic auto-generated attribute' do
   before :all do
    @classroom = Classroom.new
    @classroom.course = build(:course, nil, nil)
    @classroom.student = build(:student, nil, nil)
   end

    it 'entry_at must be generated' do
      expect(@classroom.entry_at).to be_nil
      @classroom.save
      expect(@classroom.entry_at).to_not be_nil
    end
  end
end