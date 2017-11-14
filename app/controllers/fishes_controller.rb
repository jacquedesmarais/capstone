class FishesController < ApplicationController

  def index
    @title = "My Fish"
    @fishes = Fish.all
    search_term = params[:search_term]

    if search_term
      @fishes = @fishes.where("name iLIKE ?", "%#{ search_term }%")
    end

  end

  def new
    @title = "New Fish"
    @fish = Fish.new
    @aquariums = Aquarium.all
  end

  def create
    @title = "New Fish"
    @fish = Fish.new(fish_params)

    if @fish.save
      redirect_to "/fishes/#{ @fish.id }" 
    else
      @aquariums = Aquarium.all
      render :new
    end

  end

  def show
    @fish = Fish.find(params[:id]) 
    @title = "#{ @fish.name }"
  end

  def edit
    @fish = Fish.find(params[:id]) 
    @aquariums = Aquarium.all
    @title = "Edit #{ @fish.name }"
  end

  def update
    p "PARAMS"
    p params[:aquarium_id]
    @fish = Fish.find(params[:id])
    @title = "Update #{ @fish.name }"
    p "AQ ID"
    p fish_params[:aquarium_id]
    @fish.update_attributes(fish_params)
    if @fish.save
      flash[:success] = "You edited your #{ @fish.name }. Be sure to say hi next time you visit."
      redirect_to "/fishes/#{ @fish.id }"
    else
      @aquariums = Aquarium.all
      render :edit
    end
  end

  def destroy
    @fish = Fish.find(params[:id])
    @title = "Delete #{ @fish.name }"
    @fish.remove_images!
    @fish.destroy
    redirect_to "/"
  end

  def game
    @title = "Fish Matching Game"
    @fishes = Fish.all

  end

# private only below this line!
  private

  def fish_params
    params.require(:fish).permit(:aquarium_id, :name, :family, :color, :description, { images: []})
  end
end
