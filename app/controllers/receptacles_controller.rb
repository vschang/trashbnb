class ReceptaclesController < ApplicationController
  def index
    @receptacles = policy_scope(Receptacle).order(created_at: :desc)
    @receptacles = Receptacle.all
  end

  def show
    @receptacle = Receptacle.find(params[:id])
    authorize @receptacle
  end

  def new
    @receptacle = Receptacle.new
    authorize @receptacle
  end

  def create
    @user = current_user
    @receptacle = Receptacle.new(receptacle_params)
    authorize @receptacle
    @receptacle.user = @user
    if @receptacle.save
      redirect_to receptacle_path(@receptacle)
    else
      render :new
    end
  end

  def edit
    @receptacle = Receptacle.find(params[:id])
  end

  def update
    @receptacle = Receptacle.find(params[:id])
    @receptacle.update(receptacle_params)
    redirect_to receptacle_path(@receptacle)
  end
  # def destroy
  #   @receptacle = Receptacle.find(params[:id])
  #   @receptacle.destroy
  #   redirect_to user_path(@receptacle.user)
  # end

  private

  def receptacle_params
    params.require(:receptacle).permit(:name, :picture, :capacity, :price_per_day, :address)
  end
end
