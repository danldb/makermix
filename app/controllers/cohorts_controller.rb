class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
    render json: @cohorts
  end
end
