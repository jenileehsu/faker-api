class TeamsController < ApplicationController

  def index
    @teams = Team.all
    render 'index.json.jbuilder'
  end
  
  def show
    @team = Team.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @team = Team.create(
      state: params[:state],
      creature: params[:creature],
      sport: params[:sport]
      )
    render 'show.json.jbuilder'
  end

  def update
    @team = Team.find_by(id: params[:id])
    @team.update(
      state: params[:state] || @team.state,
      creature: params[:creature] || @team.creature,
      sport: params[:sport] || @team.sport
      )
    render 'show.json.jbuilder'
  end

  def destroy
    team = Team.find_by(id: params[:id])
    team.destroy
    render json: { message: "Team successfully deleted." }
  end

end


  