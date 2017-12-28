class RoundsController < ApplicationController
  def new
    @tournament = Tournament.find(params[:tournament_id])
    @round = @tournament.rounds.new
  end

   def create
     @tournament = Tournament.find(params[:tournament_id])
     @round = @tournament.rounds.new(round_params)

     if @round.save
       flash[:success] = "Round created"
       redirect_to @tournament
     else
       flash[:danger] = "There was a problem creating the round"
       render new
     end
   end

   def edit
     @tournament = Tournament.find(params[:tournament_id])
     @round = @tournament.rounds.find(params[:id])

   end

   def update
     @tournament = Tournament.find(params[:tournament_id])
     @round = @tournament.rounds.find(params[:id])
     if @round.update_attributes(round_params)
       flash[:success] = "Round Updated"
       redirect_to @tournament
     else
       render 'edit'
     end
   end

   private
      def round_params
        params.require(:round).permit(:strategy, :deployment, :scheme1, :scheme2, :scheme3, :scheme4, :scheme5)
      end

end
