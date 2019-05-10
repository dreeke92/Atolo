import { CountUp } from '../packs/countUp.js';




function offset(el) {
    var rect = el.getBoundingClientRect(),
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    return { top: rect.top + scrollTop, left: rect.left + scrollLeft }
}

function checkHeight(pageHeight, divHeight){
  const height = ($(window).height());
  const checkHeight = divHeight - height;
  if (pageHeight > checkHeight){
    return true
  } else {
    return false
  }
}

function countOnce(element, count){
  const countUp = new CountUp(element.getAttribute('id'), count);
  if (!countUp.error) {
    countUp.start();
  } else {
    console.error(countUp.error);
  };
}


function counterUp(element, count){
  var fired = false;
  $(window).scroll(function(){
    const pageHeight = window.pageYOffset;
    const divHeight = offset(element).top;
    var check = checkHeight(pageHeight, divHeight);
    if(check === true){
      if(fired === false ){
        countOnce(element, count);
        fired = true;
      };
    };
  });
};

const trainerCounter = document.getElementById('trainer-counter');
const trainingCounter = document.getElementById('training-counter');
const clientCounter = document.getElementById('client-counter');
const traineeCounter = document.getElementById('trainee-counter');

function counter(){
  counterUp(trainerCounter, 124);
  counterUp(trainingCounter, 500);
  counterUp(clientCounter, 40);
  counterUp(traineeCounter, 600);
};

export { counter };
