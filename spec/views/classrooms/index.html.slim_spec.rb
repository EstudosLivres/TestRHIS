require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        :student => nil,
        :course => nil
      ),
      Classroom.create!(
        :student => nil,
        :course => nil
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
