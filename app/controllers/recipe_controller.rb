class RecipeController < ApplicationController
  # Include the ContentfulRails Markdown helper.
  helper ContentfulRails::MarkdownHelper

  PER_PAGE = 3

  # GET /recipe
  def index
    #  This method renders all the contentful entries of type 'recipe' and show as list.

    recipes = Recipe.paginate(page = page_count, per_page = PER_PAGE, order_field = 'sys.updatedAt').load
    @recipes = recipes.map { |recipe| recipe.normalize }
    @recipes_paginate = WillPaginate::Collection.create(page_count, PER_PAGE, recipes.total) do |p|
      p.replace(@recipes)
    end

  rescue => error
    Rails.logger.error "Something went wrong. Check Details: #{error}"
  end

  # GET /recipe/1
  def show
    # This method takes the recipe id as input, calls the ContentfulClient class's entry method
    # which calls the contentful api to get details of the specific recipe and show the details.
    # params : {
    #     "id"=>"4dT8tcb6ukGSIg2YyuGEOm"
    # }

    recipe_details = Recipe.find(params[:id])
    @details = recipe_details.normalize

  rescue => error
    Rails.logger.error "Something went wrong. Check Details: #{error}"
  end

  private

  def page_count
    page = params[:page]
    (page.to_i > 0) ? page.to_i : 1
  end
end
