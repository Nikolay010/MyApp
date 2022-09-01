# frozen_string_literal: true

class JobCategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @job_categories = JobCategory.all
  end

  def new
    @job_category = JobCategory.new
  end

  def create
    @job_categories = JobCategory.new(job_category_params)

    if @job_categories.save
      redirect_to jobs_path, notice: 'Job categories was successfully created'
    else
      render :new
    end
  end

  def show
    @job_category
  end

  private

  def set_category
    @job_category = JobCategory.find(params[:id])
  end

  def job_category_params
    params.require(:job_category).permit(:category)
  end
end
