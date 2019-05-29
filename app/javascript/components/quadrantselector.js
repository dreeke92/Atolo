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

const allToggles = document.querySelectorAll('.quadrant-toggle');
const toggleOne = document.getElementById('langauges-quadrant-toggle-one');
const toggleTwo = document.getElementById('langauges-quadrant-toggle-two');
const toggleThree = document.getElementById('langauges-quadrant-toggle-three');
const toggleFour = document.getElementById('langauges-quadrant-toggle-four');


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

function deactivateAllToggles(){
  allToggles.forEach((toggle) => {
    toggle.classList.remove('fa-chevron-right');
    toggle.classList.add('fa-chevron-down');
  })
}

function activateCurrentToggle(event){
  if (event.currentTarget === quadrantSelectorOne){
    toggleOne.classList.remove('fa-chevron-down');
    toggleOne.classList.add('fa-chevron-right');
  } else if(event.currentTarget === quadrantSelectorTwo){
    toggleTwo.classList.remove('fa-chevron-down');
    toggleTwo.classList.add('fa-chevron-right');
  } else if(event.currentTarget === quadrantSelectorThree){
    toggleThree.classList.remove('fa-chevron-down');
    toggleThree.classList.add('fa-chevron-right');
  } else if(event.currentTarget === quadrantSelectorFour){
    toggleFour.classList.remove('fa-chevron-down');
    toggleFour.classList.add('fa-chevron-right');
  }
}


function quadrantSelector(){
  allQuadrantSelectors.forEach(selector => {
    selector.addEventListener('click', event => {
      removeActiveSelectors();
      activateCurrentSelector(event);
      removeAllTexts();
      activateCurrentText(event);
      deactivateAllToggles();
      activateCurrentToggle(event);
    });
  });
};

export { quadrantSelector };
