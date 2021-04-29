class Universities::CampusController < Universities::BaseController
  before_action :set_current_university

  def index
    @campus = @current_university.campus
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

  def campus_params
    params.require(:campus).permit(:name, :description, :condition, :dependency_name, :uf, :creation_date)
  end
end