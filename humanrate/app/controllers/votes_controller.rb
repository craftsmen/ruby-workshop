class VotesController < ApplicationController
  def create
    vote = Vote.create(vote_params)
    redirect_to vote.talk
  end

  private

  def vote_params
    params.permit(:note, :talk_id)
  end
end
