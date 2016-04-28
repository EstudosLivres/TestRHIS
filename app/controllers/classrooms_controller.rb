class ClassroomsController < ApplicationController
  before_action :set_nested, only: [:create, :update]
  before_action :set_select_objs, only: [:new, :create, :edit, :update]
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @classrooms = Classroom.all
    respond_with(@classrooms)
  end

  # def show
  #   respond_with(@classroom)
  # end

  def new
    @classroom = Classroom.new
    respond_with(@classroom)
  end

  def edit
  end

  # TODO accepts_nested_attributres_for
  def create
    if @course.nil? || @students.empty?
      @classroom = Classroom.new(course: @course, student: @student_ids.first)
      @classroom.save
      respond_with(@classroom)
    else
      @student_ids.each do |s|
        @course.classrooms << Classroom.new(student_id: s.last)
      end

      @course.save
      respond_with(@classroom = @course.classrooms.first, location: classrooms_path)
    end
  end

  def update
    if @course.nil?
      respond_with(@classroom)
    else
      @student_ids.each do |s|
        @course.classrooms << Student.where(id: s).take
      end
    end

    @course.save
    respond_with(@classroom, location: classrooms_path)
  end

  def destroy
    @classroom.destroy
    respond_with(@classroom)
  end

  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def set_select_objs
      @courses = Course.all
      @students = Student.all
    end

    def classroom_params
      base_params = params.require(:classroom).permit(:course_id)
    end

    def set_nested
      @course = Course.where(id: params[:classroom][:course_id]).take

      # Fixing view framework bug for checkbox (it framework duplicate the checkboxes)
      @student_ids = params[:classroom][:student_id]
      @student_ids = [@student_ids] if @student_ids.is_a?String
      @student_ids = @student_ids.to_a unless @student_ids.is_a?Array
    end
end