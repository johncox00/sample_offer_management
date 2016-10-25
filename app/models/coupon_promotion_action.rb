class CouponPromotionAction < PromotionAction
  def display_fields
    [:identifier, :discount_type, :amount]
  end
end
