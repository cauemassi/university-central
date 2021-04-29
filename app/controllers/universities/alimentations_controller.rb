class Universities::AlimentationsController < Universities::BaseController
  before_action :set_current_university

  def index
    @alimentations = @current_university.alimentations
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

  def course_params
    params.require(:alimentations).permit(:name, :description, :condition, :dependency_name, :uf, :creation_date)
  end
end