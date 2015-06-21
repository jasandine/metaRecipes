class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe Added"
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :text, :image)
  end
end