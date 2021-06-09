class BedsController < ApplicationController
  before_action :set_bed, only: %i[show delete edit update]
  def index

    if params[:category]
      @beds = policy_scope(Bed).where(category: params[:category]).order(created_at: :desc)
    else
      @beds = policy_scope(Bed).order(created_at: :desc)
    end

  end

  def show
  end

  def new
    @bed = Bed.new
    authorize @bed
  end

  def create
    bed = Bed.new(bed_params)
    bed.user = current_user
    authorize bed

    if bed.save
      redirect_to bed_path(bed)
    else
      render "new"
    end
  end

  def delete
    @bed.destroy
    redirect_to beds_path
  end

  def edit
  end

  def update
    @bed.update[bed_params]
    redirect_to bed_path(@bed)
  end

  private

  def bed_params
    params.require(:bed).permit(:category, :title, :price, :description, :location, :photo)
  end

  def set_bed
    @bed = Bed.find(params[:id])
    authorize @bed
  end
end
