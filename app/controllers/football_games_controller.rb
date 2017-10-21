class FootballGamesController < ApplicationController
  before_action :set_football_game, only: [:show, :edit, :update, :destroy]

  # GET /football_games
  # GET /football_games.json
  def index
    @football_games = FootballGame.all
  end

  # GET /football_games/1
  # GET /football_games/1.json
  def show
  end

  # GET /football_games/new
  def new
    @football_game = FootballGame.new
  end

  # GET /football_games/1/edit
  def edit
  end

  # POST /football_games
  # POST /football_games.json
  def create
    @football_game = FootballGame.new(football_game_params)

    respond_to do |format|
      if @football_game.save
        format.html { redirect_to @football_game, notice: 'Football game was successfully created.' }
        format.json { render :show, status: :created, location: @football_game }
      else
        format.html { render :new }
        format.json { render json: @football_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /football_games/1
  # PATCH/PUT /football_games/1.json
  def update
    respond_to do |format|
      if @football_game.update(football_game_params)
        format.html { redirect_to @football_game, notice: 'Football game was successfully updated.' }
        format.json { render :show, status: :ok, location: @football_game }
      else
        format.html { render :edit }
        format.json { render json: @football_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /football_games/1
  # DELETE /football_games/1.json
  def destroy
    @football_game.destroy
    respond_to do |format|
      format.html { redirect_to football_games_url, notice: 'Football game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_football_game
      @football_game = FootballGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def football_game_params
      params.require(:football_game).permit(:name, :age, :height, :weight, :phone)
    end
end
