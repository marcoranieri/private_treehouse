class IdeasController < ApplicationController
  before_action :set_idea, only: [:show]

  def index
    @ideas = Idea.all
  end

  def show
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user = current_user
    raise
    @idea.save! if idea.valid?
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :category)
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end
end

