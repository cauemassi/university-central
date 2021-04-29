class Universities::CoursesController < Universities::BaseController
  before_action :set_current_university

  def index
    @courses = @current_university.courses
  end

  def show
  end

  def new
    @course = Course.new(university: @current_university)
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to university_courses_path(@current_university), notice: "Curso criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :difficulty).merge(university: @current_university)
  end
end