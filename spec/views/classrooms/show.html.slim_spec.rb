require 'rails_helper'

RSpec.describe "classrooms/show", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :student => nil,
      :course => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
