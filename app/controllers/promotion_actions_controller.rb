class PromotionActionsController < ApplicationController
  before_action :set_promotion_action, only: [:show, :edit, :update, :destroy]
  before_action :set_promotion

  # GET /promotion_actions
  # GET /promotion_actions.json
  def index
    @promotion_actions = PromotionAction.all
  end

  # GET /promotion_actions/1
  # GET /promotion_actions/1.json
  def show
  end

  # GET /promotion_actions/new
  def new
    @promotion_action = PromotionAction.new
  end

  # GET /promotion_actions/1/edit
  def edit
  end

  # POST /promotion_actions
  # POST /promotion_actions.json
  def create
    @promotion_action = PromotionAction.new(promotion_action_params)
    @promotion_action.promotion = @promotion
    respond_to do |format|
      if @promotion_action.save
        format.html { redirect_to promotion_path(@promotion), notice: 'Promotion action was successfully created.' }
        format.json { render :show, status: :created, location: @promotion_action }
      else
        format.html { render :new }
        format.json { render json: @promotion_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotion_actions/1
  # PATCH/PUT /promotion_actions/1.json
  def update
    respond_to do |format|
      if @promotion_action.update(promotion_action_params)
        format.html { redirect_to promotion_path(@promotion), notice: 'Promotion action was successfully updated.' }
        format.json { render :show, status: :ok, location: @promotion_action }
      else
        format.html { render :edit }
        format.json { render json: @promotion_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_actions/1
  # DELETE /promotion_actions/1.json
  def destroy
    @promotion_action.destroy
    respond_to do |format|
      format.html { redirect_to promotion_path(@promotion), notice: 'Promotion action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion_action
      @promotion_action = PromotionAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_action_params
      params.require(:promotion_action).permit(:promotion_id, :amount, :billing_description, :discount_type, :identifier, :type, :coupon_duration)
    end

    def set_promotion
      @promotion = Promotion.find(params[:promotion_id])
    end
end
