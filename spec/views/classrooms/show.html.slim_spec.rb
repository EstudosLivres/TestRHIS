require 'rails_helper'

RSpec.describe "classrooms/show", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
        student: create(:student, nil, nil),
        course: create(:course, nil, nil)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
