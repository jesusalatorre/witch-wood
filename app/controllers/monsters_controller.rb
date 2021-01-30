class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
  end

  def index
    @monsters = Monster.paginate(page: params[:page], per_page: 4)
  end

  def new
    @monster = Monster.new
  end

  def edit
  end

  def create 
    @monster = Monster.new(monster_params)
    @monster.user = current_user
    if @monster.save
      flash[:notice] = "Monster was created successfully."
      redirect_to @monster
    else
      render 'new'
    end
  end

  def update
    if @monster.update(monster_params)
      flash[:notice] = "Monster was updated successfully."
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
    params.require(:monster).permit(:name, :description, :size, :monster_type, :hit_points, :armor_class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :senses, :actions, :reations, :loot)
  end

  def require_same_user
    if current_user != @monster.user && !current_user.admin?
      flash[:alert] = "You can only edit or delete your own monsters."
      redirect_to monster_path(@monster)
    end
  end

end