class Universities::BaseController < ApplicationController
  def set_current_university
    @current_university ||= University.find(params[:university_id] || params[:id])
  end
end