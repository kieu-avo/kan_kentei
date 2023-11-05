import Raty from './raty';

window.raty = function(elem, opt) {
  let raty = new Raty(elem, opt);
  raty.init();
  return raty;
}

//newとindex（平均）に星を表示
document.addEventListener('turbo:load', function() {
  $('.review-item').each(function() {
    var reviewId = $(this).data('review-id');
    let elem = document.querySelector('#star-rating-' + reviewId);
    if (elem) {
      let isReadyOnly = elem.hasAttribute('data-score');
      let opt = {
        starOn: elem.dataset.starOn,
        starOff: elem.dataset.starOff,
        starHalf: elem.dataset.starHalf,
        scoreName: isReadyOnly ? undefined : 'user_review_answer[rating][' + reviewId + ']',
        score: isReadyOnly ? elem.dataset.socore : undefined,
        readOnly: isReadyOnly
      };
      window.raty(elem, opt);
    }
  });
});
