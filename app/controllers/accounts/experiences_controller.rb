class Accounts::ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
    @experience  = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)

    if @experience.save
      redirect_to account_experiences_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def experience_params
    params.require(:experience).permit(:user_id, :job_title, :job_content, :start_date, :end_date, :company_name, :company_link)
  end
end
