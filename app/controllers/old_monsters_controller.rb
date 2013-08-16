class OldMonstersController < ApplicationController
  before_action :set_old_monster, only: [:show, :edit, :update, :destroy]

  # GET /old_monsters
  # GET /old_monsters.json
  def index
    @old_monsters = OldMonster.all
  end

  # GET /old_monsters/1
  # GET /old_monsters/1.json
  def show
  end

  # GET /old_monsters/new
  def new
    @old_monster = OldMonster.new
  end

  # GET /old_monsters/1/edit
  def edit
  end

  # POST /old_monsters
  # POST /old_monsters.json
  def create
    @old_monster = OldMonster.new(old_monster_params)

    respond_to do |format|
      if @old_monster.save
        format.html { redirect_to @old_monster, notice: 'Old monster was successfully created.' }
        format.json { render action: 'show', status: :created, location: @old_monster }
      else
        format.html { render action: 'new' }
        format.json { render json: @old_monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_monsters/1
  # PATCH/PUT /old_monsters/1.json
  def update
    respond_to do |format|
      if @old_monster.update(old_monster_params)
        format.html { redirect_to @old_monster, notice: 'Old monster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @old_monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_monsters/1
  # DELETE /old_monsters/1.json
  def destroy
    @old_monster.destroy
    respond_to do |format|
      format.html { redirect_to old_monsters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_monster
      @old_monster = OldMonster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_monster_params
      params[:old_monster]
    end
end
