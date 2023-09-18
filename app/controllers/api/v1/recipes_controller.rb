class Api::V1::RecipesController < ApplicationController
  before_action :set_recipe, only: %I[show update destro]

  def index
    @recipes = Recipe.order(created_at: :desc)
    render json: @recipes
  end

  def show
    render json: @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save!
      render json: @recipe #, status :created, location: @recipe
    else
      render json: @recipe.errors # status: :unprocessable_entity
    end
  end

  def update
    if @recipe.update(recipe_params)
      render json: @@recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :prep_time, :rating, :servings, :category)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
