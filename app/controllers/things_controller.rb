class ThingsController < ApplicationController
 
  def index
    @thing = Thing.new
    @things = Thing.all
  end

  def create
    @thing = Thing.create(things_params)
    redirect_to root_path
  end

  private

  def things_params
    params.require(:thing).permit(:description, :author)
  end


end
