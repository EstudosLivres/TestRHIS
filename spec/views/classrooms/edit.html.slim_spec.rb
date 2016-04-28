require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    params[:controller] = 'classrooms'
    @courses = Course.all
    create(:student, nil, nil)
    @students = Student.all
    @classroom = assign(:classroom, Classroom.create!(
      student: create(:student, nil, nil),
      course: create(:course, nil, nil)
    ))
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input#classroom_student_0[name=classroom[student_id][0]]", "classroom[student_id][0]"

      assert_select "input#classroom_course_id[name=classroom[course_id]]", "classroom[course_id]"
    end
  end
end