class Api::V1::IdeasController < Api::V1::BaseController
  def index
    @ideas = Idea.all

    render json: @ideas.to_json
  end
end