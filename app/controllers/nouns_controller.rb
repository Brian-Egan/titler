class NounsController < ApplicationController
  before_action :set_noun, only: [:show, :edit, :update, :destroy]

  # GET /nouns
  # GET /nouns.json
  def index
    @nouns = Noun.all
  end

  # GET /nouns/1
  # GET /nouns/1.json
  def show
  end

  # GET /nouns/new
  def new
    @noun = Noun.new
    @nouns = Noun.all(:order => "created_at DESC")
    
  end

  # GET /nouns/1/edit
  def edit
  end

  # POST /nouns
  # POST /nouns.json
  def create
    @noun = Noun.new(noun_params)
    @nouns = Noun.all(:order => "created_at DESC")

    respond_to do |format|
      if @noun.save
        # format.html { redirect_to @noun, notice: 'Noun was successfully created.' }
        format.html { redirect_to new_noun_path , notice: 'Noun was successfully created.' }
        format.json { render action: 'show', status: :created, location: @noun }
        format.js { }
      else
        format.html { render action: 'new' }
        format.json { render json: @noun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nouns/1
  # PATCH/PUT /nouns/1.json
  def update
    respond_to do |format|
      if @noun.update(noun_params)
        format.html { redirect_to @noun, notice: 'Noun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @noun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nouns/1
  # DELETE /nouns/1.json
  def destroy
    @noun.destroy
    respond_to do |format|
      format.html { redirect_to new_noun_path }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noun
      @noun = Noun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noun_params
      params.require(:noun).permit(:word, :word2)
    end
end
