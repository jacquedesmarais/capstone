class FishesController < ApplicationController

  def index
    @title = "My Fish"
    @fishes = Fish.all
  end

  def new
    @title = "New Fish"
    @fish = Fish.new
    @aquariums = Aquarium.all
  end

  def create
    @title = "New Fish"
    @fish = Fish.new(fish_params)
    @aquariums = Aquarium.all

    @fish.save

    redirect_to "/fishes/#{ @fish.id }" 
  end

  def show
    @fish = Fish.find(params[:id])
    @aquarium = Aquarium.find(params[:id])
 
    @title = "#{ @fish.name }"
  end

  def edit
    @fish = Fish.find(params[:id]) 
    @aquariums = Aquarium.all
    @title = "Edit #{ @fish.name }"
  end

  def update
    @fish = Fish.find(params[:id])
    @aquarium = Aquarium.find(params[:id])
    @title = "Update #{ @fish.name }"
    @fish.update(fish_params)
    p fish_params

    flash[:success] = "You edited your #{ @fish.name }. Be sure to say hi next time you visit."
    redirect_to "/fishes/#{ @fish.id }"
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
    params.require(:fish).permit(:name, :family, :color, :description, :aquarium_name, { images: []})
  end
end
