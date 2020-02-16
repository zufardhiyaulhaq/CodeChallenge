class WorldController < ApplicationController
  def index
    @worlds = World.all
    render json: @worlds
  end

  def show
    @world = World.find_by(name: find_params[:name])
    if @world.nil?
      render json: { "status": 'World not found!' }
    else
      render json: @world
    end
  end

  def create
    world_params[:player].each do |p|
      @player = User.find_by(email: p)
      if @player.nil?
          return render json: { "status": "Player #{p} not found" }
      end

      if @player.map != world_params[:map]
        return render json: { "status": "Player #{p} have different map number" }
      end
    end

    if World.where(name: world_params[:name]).blank?
      @world = World.new(world_params)
      @world.save
      render json: { "status": 'world is created!' }
    else
      render json: { "status": 'world is exist!' }
    end
  end

  def delete
    @world = World.find_by(name: find_params[:name])
    if @world.nil?
      render json: { "status": 'World is not found!' }
    else
      @world.destroy
      render json: { "status": 'World is deleted!' }
    end
  end

  def play
  end

  def world_params
    params.permit(:name, :map, player: [])
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
