require 'test_helper'

class LupulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lupulo = lupulos(:one)
  end

  test "should get index" do
    get lupulos_url, as: :json
    assert_response :success
  end

  test "should create lupulo" do
    assert_difference('Lupulo.count') do
      post lupulos_url, params: { lupulo: { alfa_acids: @lupulo.alfa_acids, beer_type: @lupulo.beer_type, beta_acids: @lupulo.beta_acids, cohumulones: @lupulo.cohumulones, columbus: @lupulo.columbus, cone_shape: @lupulo.cone_shape, cone_size: @lupulo.cone_size, description: @lupulo.description, grams: @lupulo.grams, humidity: @lupulo.humidity, lupulo_type: @lupulo.lupulo_type, name: @lupulo.name, origin: @lupulo.origin, stock: @lupulo.stock, storage_index: @lupulo.storage_index, uses: @lupulo.uses } }, as: :json
    end

    assert_response 201
  end

  test "should show lupulo" do
    get lupulo_url(@lupulo), as: :json
    assert_response :success
  end

  test "should update lupulo" do
    patch lupulo_url(@lupulo), params: { lupulo: { alfa_acids: @lupulo.alfa_acids, beer_type: @lupulo.beer_type, beta_acids: @lupulo.beta_acids, cohumulones: @lupulo.cohumulones, columbus: @lupulo.columbus, cone_shape: @lupulo.cone_shape, cone_size: @lupulo.cone_size, description: @lupulo.description, grams: @lupulo.grams, humidity: @lupulo.humidity, lupulo_type: @lupulo.lupulo_type, name: @lupulo.name, origin: @lupulo.origin, stock: @lupulo.stock, storage_index: @lupulo.storage_index, uses: @lupulo.uses } }, as: :json
    assert_response 200
  end

  test "should destroy lupulo" do
    assert_difference('Lupulo.count', -1) do
      delete lupulo_url(@lupulo), as: :json
    end

    assert_response 204
  end
end
