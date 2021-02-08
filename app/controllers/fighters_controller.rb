class FightersController < ApplicationController
  def index
    @fighters = Fighter.all
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)

    if @fighter.save
      redirect_to accueil_path, notice: "Super! Un nouveau combattant."
    else
      render new_fighter_path
    end
  end

  # def show
  #   @fighters = Fighter.find(params[:id])
  # end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    if @fighter.update_attributes(fighter_params)
      redirect_to fighters_path, notice: "#{@fighter.name} est de retour de la salle!"
    else
      redirect_to edit_fighter_path(@fighter), with: @fighter.errors
    end
  end

  def destroy
    @fighter = Fighter.find(params[:id])
    if @fighter.delete
      redirect_to fighters_path
    else
      redirect_back notice: 'Impossible de supprimer le combattant'
    end
  end

  private

  def fighter_params
    params.require(:fighter).permit(:name, :energy, :strength, :stamina, :avatar)
  end
end
