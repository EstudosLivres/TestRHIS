require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    params[:controller] = 'classrooms'
    @courses = Course.all
    create(:student, nil, nil)
    @students = Student.all
    assign(:classroom, Classroom.new(
        student: create(:student, nil, nil),
        course: create(:course, nil, nil)
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input#classroom_student_0[name=classroom[student_id][0]]", "classroom[student_id][0]"

      assert_select "input#classroom_course_id[name=classroom[course_id]]", "classroom[course_id]"
    end
  end
end
