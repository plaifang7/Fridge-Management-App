class FridgesController < ApplicationController
  def index
  @fridges = Fridge.all
  end

  def show
    @fridge = Fridge.find(params[:id])
    @foods = @fridge.foods
    @drinks = @fridge.drinks
  end

  def new
    @fridge = Fridge.new
  end

  def create
    @fridge = Fridge.create(fridge_params)
    if @fridge.valid?
      @fridge.save
      redirect_to fridge_path(@fridge)
    else
      flash[:notice] = "Please fill out all fields"
      redirect_to '/fridges/new'
    end
  end

  def edit
    @fridge = Fridge.find(params[:id])
  end

  def update
    @fridge = Fridge.find(params[:id])
    @fridge.update_attributes(fridge_params)
    if @fridge.valid?
      @fridge.save
      redirect_to fridge_path(@fridge)
    else
      flash[:notice] = "Pleas update all fields"
      redirect_to edit_fridge_path(@fridge)
    end
  end

  def destroy
    @firdge = Fridge.find(params[:id]).destroy
    redirect_to fridges_path
  end



  private

  def fridge_params
    params.require(:fridge).permit(:brand, :location, :size)
  end


end
