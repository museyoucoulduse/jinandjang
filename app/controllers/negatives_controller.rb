class NegativesController < ApplicationController
  before_action :set_negative, only: [:show, :edit, :update, :destroy]

  # GET /negatives
  # GET /negatives.json
  def index
    @negatives = Negative.all
  end

  # GET /negatives/1
  # GET /negatives/1.json
  def show
  end

  # GET /negatives/new
  def new
    @negative = Negative.new
  end

  # GET /negatives/1/edit
  def edit
  end

  # POST /negatives
  # POST /negatives.json
  def create
    @negative = Negative.new(negative_params)

    respond_to do |format|
      if @negative.save
        format.html { redirect_to @negative, notice: 'Negative was successfully created.' }
        format.json { render :show, status: :created, location: @negative }
      else
        format.html { render :new }
        format.json { render json: @negative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negatives/1
  # PATCH/PUT /negatives/1.json
  def update
    respond_to do |format|
      if @negative.update(negative_params)
        format.html { redirect_to @negative, notice: 'Negative was successfully updated.' }
        format.json { render :show, status: :ok, location: @negative }
      else
        format.html { render :edit }
        format.json { render json: @negative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negatives/1
  # DELETE /negatives/1.json
  def destroy
    @negative.destroy
    respond_to do |format|
      format.html { redirect_to negatives_url, notice: 'Negative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negative
      @negative = Negative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def negative_params
      params.require(:negative).permit(:title, :description, :when)
    end
end
