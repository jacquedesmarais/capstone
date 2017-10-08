class AquariumsController < ApplicationController

  def index
    @title = "All Aquariums"
    @aquariums = Aquarium.all
  end

  def new
    @aquarium = Aquarium.new
  end

  def create
    @aquarium = Aquarium.new(
                    name: params[:name],
                    city: params[:city],
                    state: params[:state]
                    )
    @aquarium.save

    redirect_to "/aquariums/#{ @aquarium.id }" 

    tip = Tip.new(
                      aquarium_id: params[:aquarium_id],
                      note: params[:note]
                      )
    tip.save
  end

  def show
    @title = "Aquarium"
    @aquarium = Aquarium.find(params[:id]) 
  end

  def edit
    @aquarium = Aquarium.find(params[:id]) 
  end

  def update
    @aquarium = Aquarium.find(params[:id])

    @aquarium.assign_attributes(
                                name: params[:name],
                                city: params[:city],
                                state: params[:state]
                          )

    if @aquarium.save
      flash[:success] = "You edited your #{ @aquarium.name }."
      redirect_to "/aquariums/#{ @aquarium.id }"
    end

    tip = Tip.find(params[:id])
    
    tip.assign_attributes(
                          aquarium_id: params[:aquarium_id],
                          note: params[:note]
                          )

    tip.save
  end

  def destroy
    aquarium = Aquarium.find(params[:id])
    aquarium.destroy
    redirect_to "/"
  end
end
