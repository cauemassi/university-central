class Universities::StudentEntitiesController < Universities::BaseController
  before_action :set_current_university

  def index
    @student_entities = @current_university.student_entities
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
    params.require(:student_entity).permit(:name, :description, :condition, :dependency_name, :uf, :creation_date)
  end
end