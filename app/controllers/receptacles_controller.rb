class ReceptaclesController < ApplicationController
  def index
    @receptacles = Receptacle.all
  end

  def show
    @receptacle = Receptacle.find(params[:id])
  end

  def new
    @receptacle = Receptacle.new
  end

  def create
    @user = current_user
    @receptacle = Receptacle.new(receptacle_params)
    @receptacle.user = @user
    if @receptacle.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @receptacle = Receptacle.find(params[:id])
    @receptacle.destroy
    redirect_to user_path(@receptacle.user)
  end

  private

  def receptacle_params
    params.require(:receptacle).permit(:comment, :movie_id)
  end
end
