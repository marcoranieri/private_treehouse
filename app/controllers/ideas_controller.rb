class IdeasController < ApplicationController
  before_action :set_idea,         only: [:show]
  before_action :set_tags_as_hash, only: [:new]

  def index
    @ideas = Idea.order(created_at: :desc)
  end

  def show
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user = current_user

    @idea.save! if @idea.valid?

    redirect_to :ideas
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :tag_list, photos: [])
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def set_tags_as_hash
    @tags = Idea.tag_counts.map do |tag|
      {
        name: tag.name,
        count: tag.taggings_count
      }
    end
  end
end

