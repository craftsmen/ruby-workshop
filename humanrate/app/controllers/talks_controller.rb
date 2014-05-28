class TalksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @talks = Talk.all
  end

  def show
    @talk = Talk.find(params[:id])
  end
end
