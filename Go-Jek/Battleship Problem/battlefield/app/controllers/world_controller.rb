class WorldController < ApplicationController
  def index
    @worlds = World.all
    render json: @worlds
  end

  def show
    @world = World.find_by(email: find_params[:name])
    if @world.nil?
      render json: { "status": 'World not found!' }
    else
      render json: @world
    end
  end

  def create
    if World.where(email: world_params[:name]).blank?
      @world = World.new(world_params)
      @world.save
      render json: { "status": 'world is created!' }
    else
      render json: { "status": 'world is exist!' }
    end
  end

  def delete
    @world = Wolrd.find_by(name: find_params[:name])
    if @world.nil?
      @world.destroy
    else
      render json: { "status": 'World is deleted!' }
    end
  end

  def world_params
    params.permit(:name, :map, ship: [])
  end

  def find_params
    params.permit(:name)
  end
end

# frozen_string_literal: true

# class PlayController < ApplicationController
#     def play
#       if find_params[:player].length != 2
#         return render json: { "status": 'you need 2 player!' }
#       end

#       @player1 = world.find_by(email: find_params[:player][0])
#       if @player1.nil?
#         render json: { "status": "Player with email #{find_params[:player][0]} not found!" }
#       end

#       @player2 = world.find_by(email: find_params[:player][1])
#       if @player2.nil?
#         render json: { "status": "Player with email #{find_params[:player][1]} not found!" }
#       end

#     end

#     def find_params
#       params.permit(player: [])
#     end
#   end
