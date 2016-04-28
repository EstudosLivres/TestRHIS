require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        entry_at: Time.now,
        student: create(:student, nil, nil),
        course: create(:course, nil, nil)
      ),

      Classroom.create!(
        entry_at: Time.now,
        student: create(:student, nil, nil),
        course: create(:course, nil, nil)
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    assert_select "tr", :count => ['tr thead', 'first classroom assigned', 'second classroom assigned'].length
    assert_select "tr>td", :count => [:course, :student, :entry_at, :edit, :delete].length*[:assigned_class_1, :assigned_class_2].length
  end
end
