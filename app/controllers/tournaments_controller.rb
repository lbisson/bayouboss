class TournamentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
    @tournaments = Tournament.paginate(page: params[:page])
  end

  def create

  end

  def destroy

  end
end
