class RecipeController < ApplicationController
  # Include the ContentfulRails Markdown helper.
  helper ContentfulRails::MarkdownHelper

  # GET /recipe
  def index
    #  This method renders all the contentful entries of type 'recipe' and show as list.
    @recipes = Recipe.all.load
  end

  # GET /recipe/1
  def show
    # This method takes the recipe id as input, calls the ContentfulClient class's entry method
    # which calls the contentful api to get details of the specific recipe and show the details.
    # params : {
    #     "id"=>"4dT8tcb6ukGSIg2YyuGEOm"
    # }

    # @recipe = ContentfulClient.new.entry(params[:id])
    recipe_details = Recipe.find(params[:id])
    @details = recipe_details.normalize
  end
end
