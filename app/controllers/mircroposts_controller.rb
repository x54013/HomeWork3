class MircropostsController < ApplicationController
  before_action :set_mircropost, only: [:show, :edit, :update, :destroy]

  # GET /mircroposts
  # GET /mircroposts.json
  def index
    @mircroposts = Mircropost.all
  end

  # GET /mircroposts/1
  # GET /mircroposts/1.json
  def show
  end

  # GET /mircroposts/new
  def new
    @mircropost = Mircropost.new
  end

  # GET /mircroposts/1/edit
  def edit
  end

  # POST /mircroposts
  # POST /mircroposts.json
  def create
    @mircropost = Mircropost.new(mircropost_params)

    respond_to do |format|
      if @mircropost.save
        format.html { redirect_to @mircropost, notice: 'Mircropost was successfully created.' }
        format.json { render :show, status: :created, location: @mircropost }
      else
        format.html { render :new }
        format.json { render json: @mircropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mircroposts/1
  # PATCH/PUT /mircroposts/1.json
  def update
    respond_to do |format|
      if @mircropost.update(mircropost_params)
        format.html { redirect_to @mircropost, notice: 'Mircropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @mircropost }
      else
        format.html { render :edit }
        format.json { render json: @mircropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mircroposts/1
  # DELETE /mircroposts/1.json
  def destroy
    @mircropost.destroy
    respond_to do |format|
      format.html { redirect_to mircroposts_url, notice: 'Mircropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mircropost
      @mircropost = Mircropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mircropost_params
      params.require(:mircropost).permit(:content, :user_id)
    end
end
