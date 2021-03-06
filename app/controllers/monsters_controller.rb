class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]

  # GET /monsters
  # GET /monsters.json
  def index
    # @monsters = Monster.all

    @sortOrder = params[:sort]
    # if @sortOrder == "sortDate"
    #   @monsters = Monster.all(:order => "created_at DESC")
    # elsif @sortOrder == "sortLikes"
    #   @monsters = Monster.all(:order => "likes_count DESC")
    # else
    #   @monsters = Monster.all(:order => "likes_count DESC")
    # end

    # @monsters = Monster.paginate(:page => 1, :order => 'likes_count DESC')
    if params[:page]
        @pageN = params[:page].to_i
      else
        @pageN = 1
      end

    @perPage = Monster.per_page.ceil

    @totPgs = (Monster.count.to_f / Monster.per_page.to_f)

          

    @monsters = Monster.page(params[:page]).order("likes_count DESC")

    @pageN += 1

    respond_to do |format|
      format.html
      format.js
    end

  end

  # GET /monsters/1
  # GET /monsters/1.json
  def show
    
  end

  # GET /monsters/new
  def new
    @monster = Monster.new
    @randW = rand(4)
    @randW = @randW +1

  end

  # GET /monsters/1/edit
  def edit
  end

  # POST /monsters
  # POST /monsters.json
  def create
    @monster = Monster.new(monster_params)

    respond_to do |format|
      if @monster.save
        format.html { redirect_to @monster, notice: 'Monster was successfully created.' }
        format.json { render action: 'show', status: :created, location: @monster }
      else
        format.html { render action: 'new' }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  def random
    @randA = rand(3)
    @randA = @randA +1
    @num_adj = Adjective.find(:all).count
    @randA = rand(@num_adj)
    @randA = @randA + 1 unless @randA > 0
    @adjective = Adjective.find(@randA).word
    @num_noun = Noun.find(:all).count
    @randN = rand(@num_noun)
    @randN = @randN + 1 unless @randN > 0
    @noun = Noun.find(@randN).word

    @TotMon = TotalMonsters.find(1)
    @TotMon.monster_count += 1
    @TotMon.save



    # @mymonster = @adjective + " " + @noun

    # @monster = Monster.new(:name => @mymonster, :noun => @noun, :adjective => @adjective)
    # @monster.save
 
  end

  def stats
    @monsters = Monster.all
    @TotMon = TotalMonsters.find(1).monster_count
    @numAdj = Adjective.count
    @numNoun = Noun.count

  end

  # def save

    

  #   @monster_id = params[:id]
  #   @monster = Monster.find(@monster_id)
  #   @monster.likes_count += 1
  #   @monster.save
  #   @sortOrder = "sortLikes"
  #   @likes = Monster.find(@monster_id).likes_count

  #   respond_to do |format|
  #     format.js
  #   end
  # end


  # PATCH/PUT /monsters/1
  # PATCH/PUT /monsters/1.json
  def update
    respond_to do |format|
      if @monster.update(monster_params)
        format.html { redirect_to @monster, notice: 'Monster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monsters/1
  # DELETE /monsters/1.json
  def destroy
    @monster.destroy
    respond_to do |format|
      format.html { redirect_to monsters_url }
      format.json { head :no_content }
    end
  end

  def test
    @numBooks = 15
    @i = 1
    @monStars = []
    while @i < @numBooks + 1
      @monStars << @i
      @i += 1
    end

    respond_to do |format|
      format.html {  }
      format.json {}
    end
  end

  def likeMon
    @monster_id = params[:id]
    @monster = Monster.find(@monster_id)
    @monster.likes_count += 1
    @monster.save
    @sortOrder = "sortLikes"
    @likes = Monster.find(@monster_id).likes_count

    respond_to do |format|
      format.js
    end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = Monster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monster_params
      params.require(:monster).permit(:name)
    end
end
