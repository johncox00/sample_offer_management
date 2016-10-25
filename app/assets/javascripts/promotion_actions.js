function hideIt(thing){
  $('.'+thing).hide();
}

function showIt(thing){
  $('.'+thing).show();
}

function plan(){
  hideIt('not-plan');
  showIt('plan');
}

function credit(){
  hideIt('not-credit');
  showIt('credit');
}

function coupon(){
  hideIt('not-coupon');
  showIt('coupon');
}

function setType(type){
  switch(type){
    case 'CouponPromotionAction':
      coupon();
      break;
    case 'CreditPromotionAction':
      credit();
      break;
    case 'PlanPromotionAction':
      plan();
      break;
  }
}

function ready(){
  $('#promotion_action_type').change(function(){
    setType($(this).val());
  })

  setType($('#promotion_action_type').val());
}

$( document ).on('turbolinks:load', function() {
  ready();
});
