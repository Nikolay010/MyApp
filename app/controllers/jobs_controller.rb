class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_job, only: [:show, :destroy]
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save!
      redirect_to jobs_path, notice: "Job was successfully created"
    else
      render :new
    end
  end

  def show
    @job.title
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, notice: "Job was successfully removed"
  end


  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :job_category_id, :date_job)
  end
end