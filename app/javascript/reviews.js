import Raty from './raty';

window.raty = function(elem, opt) {
  let raty = new Raty(elem, opt);
  raty.init();
  return raty;
}

document.addEventListener('turbo:load', function() {
  $('.review-item').each(function() {
    var reviewId = $(this).data('review-id');
    let elem = document.querySelector('#star-rating-' + reviewId);
    if (elem) {
      let opt = {
        starOn: elem.dataset.starOn,
        starOff: elem.dataset.starOff,
        starHalf: elem.dataset.starHalf,
        scoreName: 'user_review_answer[rating][' + reviewId + ']'
      };
      window.raty(elem, opt);
    }
  });
});