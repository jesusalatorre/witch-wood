class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]

  def show

  end

  def index
    @monsters = Monster.all
  end

  def new
    @monster = Monster.new
  end

  def edit
  end

  def create 
    @monster = Monster.new(monster_params)
    if @monster.save
      redirect_to @monster
    else
      render 'new'
    end
  end

  def update
    if @monster.update(monster_params)
      redirect_to @monster
    else
      render 'edit'
    end
  end

  def destroy
    @monster.destroy
    redirect_to monsters_path
  end

  private

  def set_monster
    @monster = Monster.find(params[:id])
  end

  def monster_params
    params.require(:monster).permit(:name, :description, :size, :monster_type, :hit_points, :armor_class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end

end