class VotesController < ApplicationController
    def create
      Votes.create(post_params)
      redirect_to root_path
    end
    private
    def vote_params
      params.require(:vote).permit(:votable_id, :votable_type, :voter_id)
    end
end
