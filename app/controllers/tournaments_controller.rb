class TournamentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: [:destroy]

  def index
    @tournaments = Tournament.paginate(page: params[:page])
  end

  def show
    @tournament = Tournament.find(params[:id])
    @rounds = @tournament.rounds
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    if @tournament.update_attributes(tournament_params)
      flash[:success] = "Tournament Updated"
      redirect_to @tournament
    else
      render 'edit'
    end
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = current_user.tournaments.build(tournament_params)
    if @tournament.save
      flash[:success] = "Tournament created."
      redirect_to @tournament
    else
      flash[:danger] = "Action Failed"
      render 'new'
    end
  end

  def destroy
        @tournament.destroy
        flash[:success] = "Tournament deleted"
        redirect_to current_user
  end

  private
    def tournament_params
      params.require(:tournament).permit(:name, :event_start, :num_rounds, :summary)
    end

    def correct_user
      @tournament = current_user.tournaments.find_by(id: params[:id])
      redirect_to root_url if @tournament.nil?
    end

end
