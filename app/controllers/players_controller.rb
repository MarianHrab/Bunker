class PlayersController < ApplicationController
    before_action :authenticate_user!

  def new
    @room = Room.find(params[:room_id])
    
    # Check if the user already has a player in the room
    if @room.players.exists?(user_id: current_user.id)
      redirect_to edit_room_player_path(@room, current_user.player), alert: 'You already have a player in this room.'
    else
      @player = Player.new
    end
  end

  def edit
    @room = Room.find(params[:room_id])
    @player = current_user.player
  end
  
    def update
        @room = Room.find(params[:room_id])
        @player = current_user.player
    
        if @player.update(player_params)
        redirect_to @room, notice: 'Player was successfully updated.'
        else
        render :edit
        end
    end

  def create
    @room = Room.find(params[:room_id])
    @player = @room.players.build(player_params)

    if @player.save
      redirect_to @room, notice: 'Player was successfully created.'
    else
      render :new
    end
  end   

  private
  def player_params
    params.require(:player).permit(:name, :other_attributes)
  end
end
