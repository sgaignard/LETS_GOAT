import { Controller } from "stimulus"
import Swipe from 'swipejs';

export default class extends Controller {
  connect() {
    window.mySwipe = new Swipe(document.getElementById('slider'), {
      startSlide: 0,
      speed: 400,
      auto: 3000,
      draggable: false,
      continuous: true,
      disableScroll: false,
      stopPropagation: false,
      ignore: ".scroller",
      callback: function(index, elem, dir) {},
      transitionEnd: function(index, elem) {}
    });
  }
}
