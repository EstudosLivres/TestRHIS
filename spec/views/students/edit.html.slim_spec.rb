require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :register_number => "MyString",
      :status => 1
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_register_number[name=?]", "student[register_number]"

      assert_select "input#student_status[name=?]", "student[status]"
    end
  end
end
