class FishesController < ApplicationController

  def index
    @title = "All Fish"
    @fishes = Fish.all
  end

  def new
    @fishes = Fish.all
  end

  def create
    fish = Fish.new(
                    name: params[:name],
                    family: params[:family],
                    color: params[:color],
                    description: params[:description]
                    )
    fish.save

    redirect_to "/fishes/#{ fish.id }" 
  end

  def show
    @title = "Fish"
    @fish = Fish.find(params[:id]) 
  end

  def edit
    @fish = Fish.find(params[:id]) 
  end

  def update
    fish = Fish.find(params[:id])

    fish.assign_attributes(
                          name: params[:name],
                          family: params[:family],
                          color: params[:color],
                          description: params[:description]
                          )

    fish.save

  end

  def destroy
    fish = Fish.find(params[:id])
    fish.destroy
    redirect_to "/"
  end

end
