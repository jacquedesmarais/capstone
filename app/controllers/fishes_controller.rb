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
    @fish.save

    redirect_to "/fishes/#{ @fish.id }" 
  end

  def show
    @fish = Fish.find(params[:id]) 
    @title = "#{ @fish.name }"
  end

  def edit
    @fish = Fish.find(params[:id]) 
    @title = "Edit #{ @fish.name }"
    @aquariums = Aquarium.all
  end

  def update
    @fish = Fish.find(params[:id])
    @title = "Update #{ @fish.name }"
    @fish.update(fish_params)

    # @fish.assign_attributes(
    #                       name: params[:name],
    #                       family: params[:family],
    #                       color: params[:color],
    #                       description: params[:description]
    #                       )

    if @fish.save
      flash[:success] = "You edited your #{ @fish.name }. Be sure to say hi next time you visit."
      redirect_to "/fishes/#{ @fish.id }"
    end

    if @fish.default_image == "https://vignette.wikia.nocookie.net/pixar/images/3/39/59.png/revision/latest/scale-to-width-down/308?cb=20170511011455"
      image = Image.new(
                        fish_id: params[:id],
                        url: params[:image_url]
                        )
      image.save
    else
    image = Image.find(params[:id])
    image.assign_attributes(
                              fish_id: params[:fish_id],
                              url: params[:url]
                              )

    image.save
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
    params.require(:fish).permit(:name, :family, :color, :description, { images: []}, :aquarium_name)
  end
end
