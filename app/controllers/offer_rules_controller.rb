class OfferRulesController < ApplicationController
  before_action :set_offer_rule, only: [:show, :edit, :update, :destroy]
  before_action :set_offer
  # GET /offer_rules
  # GET /offer_rules.json
  def index
    @offer_rules = OfferRule.all
  end

  # GET /offer_rules/1
  # GET /offer_rules/1.json
  def show
  end

  # GET /offer_rules/new
  def new
    @offer_rule = OfferRule.new
  end

  # GET /offer_rules/1/edit
  def edit
  end

  # POST /offer_rules
  # POST /offer_rules.json
  def create
    @offer_rule = OfferRule.new(offer_rule_params)
    @offer_rule.offer = @offer
    respond_to do |format|
      if @offer_rule.save
        format.html { redirect_to offer_path(@offer), notice: 'Offer rule was successfully created.' }
        format.json { render :show, status: :created, location: @offer_rule }
      else
        format.html { render :new }
        format.json { render json: @offer_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_rules/1
  # PATCH/PUT /offer_rules/1.json
  def update
    respond_to do |format|
      if @offer_rule.update(offer_rule_params)
        format.html { redirect_to offer_path(@offer), notice: 'Offer rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_rule }
      else
        format.html { render :edit }
        format.json { render json: @offer_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_rules/1
  # DELETE /offer_rules/1.json
  def destroy
    @offer_rule.destroy
    respond_to do |format|
      format.html { redirect_to offer_path(@offer), notice: 'Offer rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_rule
      @offer_rule = OfferRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_rule_params
      params.require(:offer_rule).permit(:offer_id, :user_method, :operator, :threshold, :field_type)
    end

    def set_offer
      @offer = Offer.find(params[:offer_id])
    end
end
