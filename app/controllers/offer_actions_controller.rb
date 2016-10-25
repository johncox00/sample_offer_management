class OfferActionsController < ApplicationController
  before_action :set_offer_action, only: [:show, :edit, :update, :destroy]
  before_action :set_offer
  # GET /offer_actions
  # GET /offer_actions.json
  def index
    @offer_actions = OfferAction.all
  end

  # GET /offer_actions/1
  # GET /offer_actions/1.json
  def show
  end

  # GET /offer_actions/new
  def new
    @offer_action = OfferAction.new
  end

  # GET /offer_actions/1/edit
  def edit
  end

  # POST /offer_actions
  # POST /offer_actions.json
  def create
    @offer_action = OfferAction.new(offer_action_params)
    @offer_action.offer = @offer
    respond_to do |format|
      if @offer_action.save
        format.html { redirect_to offer_path(@offer), notice: 'Offer action was successfully created.' }
        format.json { render :show, status: :created, location: @offer_action }
      else
        format.html { render :new }
        format.json { render json: @offer_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_actions/1
  # PATCH/PUT /offer_actions/1.json
  def update
    respond_to do |format|
      if @offer_action.update(offer_action_params)
        format.html { redirect_to offer_path(@offer), notice: 'Offer action was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_action }
      else
        format.html { render :edit }
        format.json { render json: @offer_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_actions/1
  # DELETE /offer_actions/1.json
  def destroy
    @offer_action.destroy
    respond_to do |format|
      format.html { redirect_to offer_path(@offer), notice: 'Offer action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_action
      @offer_action = OfferAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_action_params
      params.require(:offer_action).permit(:offer_id, :action_type, :action_identifier)
    end

    def set_offer
      @offer = Offer.find(params[:offer_id])
    end
end
