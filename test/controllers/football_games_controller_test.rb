require 'test_helper'

class FootballGamesControllerTest < ActionController::TestCase
  setup do
    @football_game = football_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:football_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create football_game" do
    assert_difference('FootballGame.count') do
      post :create, football_game: { age: @football_game.age, height: @football_game.height, name: @football_game.name, phone: @football_game.phone, weight: @football_game.weight }
    end

    assert_redirected_to football_game_path(assigns(:football_game))
  end

  test "should show football_game" do
    get :show, id: @football_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @football_game
    assert_response :success
  end

  test "should update football_game" do
    patch :update, id: @football_game, football_game: { age: @football_game.age, height: @football_game.height, name: @football_game.name, phone: @football_game.phone, weight: @football_game.weight }
    assert_redirected_to football_game_path(assigns(:football_game))
  end

  test "should destroy football_game" do
    assert_difference('FootballGame.count', -1) do
      delete :destroy, id: @football_game
    end

    assert_redirected_to football_games_path
  end
end
