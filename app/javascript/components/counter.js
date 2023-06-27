import { CountUp } from '../packs/countUp.js';

const trainerCounter = document.getElementById('trainer-counter');
const coachesCounter = document.getElementById('coaches-counter');
const traineesCounter = document.getElementById('trainees-counter');
const satisfactionCounter = document.getElementById('satisfaction-counter');
const trainingCounter = document.getElementById('training-counter');
const clientCounter = document.getElementById('client-counter');
const traineeCounter = document.getElementById('trainee-counter');

function offset(el) {
  if (el !== null){
    var rect = el.getBoundingClientRect(),
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    return { top: rect.top + scrollTop, left: rect.left + scrollLeft }
  } else {
    return 'nothing to return';
  }
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
    const divHeight = offset(trainerCounter).top;
    var check = checkHeight(pageHeight, divHeight);
    if(check === true){
      if(fired === false ){
        countOnce(element, count);
        fired = true;
      };
    };
  });
};

function counter(){
  counterUp(trainerCounter, 6100);
  counterUp(coachesCounter, 80);
  counterUp(traineesCounter, 13071);
  counterUp(satisfactionCounter, 99);
  counterUp(trainingCounter, 50);
  counterUp(clientCounter, 10000);
  // counterUp(traineeCounter, 10000);
};

export { counter };
