class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    if @game.user == current_user || !@game.user
      @game.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:user_id, :no_of_places, :start_time, :end_time, :date, :name, :price, :venue_id)
    end
end
