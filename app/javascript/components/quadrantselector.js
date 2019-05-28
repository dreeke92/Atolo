const allQuadrantSelectors = document.querySelectorAll('.languages-quadrant-selector');
const quadrantSelectorOne = document.getElementById('languages-quadrant-selector-one');
const quadrantSelectorTwo = document.getElementById('languages-quadrant-selector-two');
const quadrantSelectorThree = document.getElementById('languages-quadrant-selector-three');
const quadrantSelectorFour = document.getElementById('languages-quadrant-selector-four');

const allQuadrantContents = document.querySelectorAll('.languages-quadrant-content');
const quadrantContentOne = document.getElementById('languages-quadrant-content-one');
const quadrantContentTwo = document.getElementById('languages-quadrant-content-two');
const quadrantContentThree = document.getElementById('languages-quadrant-content-three');
const quadrantContentFour = document.getElementById('languages-quadrant-content-four');


function removeActiveSelectors(){
  allQuadrantSelectors.forEach(selector => {
    selector.classList.remove('active');
  });
};

function activateCurrentSelector(event){
  event.currentTarget.classList.add('active');
};

function removeAllTexts(){
  allQuadrantContents.forEach(content => {
    content.style.display = "none";
  })
};

function activateCurrentText(event){
  if (event.currentTarget === quadrantSelectorOne){
    $(quadrantContentOne).fadeIn();
  } else if(event.currentTarget === quadrantSelectorTwo){
    $(quadrantContentTwo).fadeIn();
  } else if(event.currentTarget === quadrantSelectorThree){
    $(quadrantContentThree).fadeIn();
  } else if(event.currentTarget === quadrantSelectorFour){
    $(quadrantContentFour).fadeIn();
  }
}


function quadrantSelector(){
  allQuadrantSelectors.forEach(selector => {
    selector.addEventListener('click', event => {
      removeActiveSelectors();
      activateCurrentSelector(event);
      removeAllTexts();
      activateCurrentText(event);
    });
  });
};

export { quadrantSelector };
