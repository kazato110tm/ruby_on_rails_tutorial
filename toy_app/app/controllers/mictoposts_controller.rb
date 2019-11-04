class MictopostsController < ApplicationController
  before_action :set_mictopost, only: [:show, :edit, :update, :destroy]

  # GET /mictoposts
  # GET /mictoposts.json
  def index
    @mictoposts = Mictopost.all
  end

  # GET /mictoposts/1
  # GET /mictoposts/1.json
  def show
  end

  # GET /mictoposts/new
  def new
    @mictopost = Mictopost.new
  end

  # GET /mictoposts/1/edit
  def edit
  end

  # POST /mictoposts
  # POST /mictoposts.json
  def create
    @mictopost = Mictopost.new(mictopost_params)

    respond_to do |format|
      if @mictopost.save
        format.html { redirect_to @mictopost, notice: 'Mictopost was successfully created.' }
        format.json { render :show, status: :created, location: @mictopost }
      else
        format.html { render :new }
        format.json { render json: @mictopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mictoposts/1
  # PATCH/PUT /mictoposts/1.json
  def update
    respond_to do |format|
      if @mictopost.update(mictopost_params)
        format.html { redirect_to @mictopost, notice: 'Mictopost was successfully updated.' }
        format.json { render :show, status: :ok, location: @mictopost }
      else
        format.html { render :edit }
        format.json { render json: @mictopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mictoposts/1
  # DELETE /mictoposts/1.json
  def destroy
    @mictopost.destroy
    respond_to do |format|
      format.html { redirect_to mictoposts_url, notice: 'Mictopost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mictopost
      @mictopost = Mictopost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mictopost_params
      params.require(:mictopost).permit(:content, :user_id)
    end
end
