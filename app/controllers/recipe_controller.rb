class RecipeController < ApplicationController

  # GET /recipe
  def index
    #  This method renders all the contentful entries of type 'recipe' and show as list.
  end

  # GET /recipe/1
  def show
    # This method takes the recipe id as input, calls the contentful api to get details
    # of the specific recipe and show the details.
    # params : {
    #     "controller"=>"recipe",
    #     "action"=>"show",
    #     "id"=>"4dT8tcb6ukGSIg2YyuGEOm"
    # }
  end
end
