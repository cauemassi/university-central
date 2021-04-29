class Universities::TeachersController < Universities::BaseController
  before_action :set_current_university

  def index
    @teachers = @current_university.teachers
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :description, :condition, :dependency_name, :uf, :creation_date)
  end
end