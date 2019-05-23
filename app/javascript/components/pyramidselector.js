const allPyramidSelectors = document.querySelectorAll('.pyramid-selector');
const pyramidSelectorOne = document.getElementById('pyramid-selector-one');
const pyramidSelectorTwo = document.getElementById('pyramid-selector-two');
const pyramidSelectorThree = document.getElementById('pyramid-selector-three');

const allMediumPyramidSelectors = document.querySelectorAll('.medium-pyramid-selector');
const mediumPyramidSelectorOne = document.getElementById('medium-pyramid-selector-one');
const mediumPyramidSelectorTwo = document.getElementById('medium-pyramid-selector-two');
const mediumPyramidSelectorThree = document.getElementById('medium-pyramid-selector-three');

const allPyramidContent = document.querySelectorAll('.pyramid-content');
const pyramidContentOne = document.getElementById('pyramid-content-one');
const pyramidContentTwo = document.getElementById('pyramid-content-two');
const pyramidContentThree = document.getElementById('pyramid-content-three');

function deactivateAllSelectors(){
  allPyramidSelectors.forEach((selector) => {
    selector.classList.remove("active");
  })
  allMediumPyramidSelectors.forEach((selector) => {
    selector.classList.remove("active");
  })
}

function activateCurrentSelector(event){
  if (event.currentTarget === pyramidSelectorOne){
    pyramidSelectorOne.classList.add("active");
    mediumPyramidSelectorOne.classList.add("active");
  } else if (event.currentTarget === pyramidSelectorTwo){
    pyramidSelectorTwo.classList.add("active");
    mediumPyramidSelectorTwo.classList.add("active");
  } else if (event.currentTarget === pyramidSelectorThree){
    pyramidSelectorThree.classList.add("active");
    mediumPyramidSelectorThree.classList.add("active");
  } else if (event.currentTarget === mediumPyramidSelectorOne){
    pyramidSelectorOne.classList.add("active");
    mediumPyramidSelectorOne.classList.add("active");
  } else if (event.currentTarget === mediumPyramidSelectorTwo){
    pyramidSelectorTwo.classList.add("active");
    mediumPyramidSelectorTwo.classList.add("active");
  } else if (event.currentTarget === mediumPyramidSelectorThree){
    pyramidSelectorThree.classList.add("active");
    mediumPyramidSelectorThree.classList.add("active");
  };
}

function deactivateAllContent(){
  allPyramidContent.forEach((content) => {
    content.style.display = 'none';
  });
};

function activateCurrentContent(event){
  if ((event.currentTarget === pyramidSelectorOne)||(event.currentTarget === mediumPyramidSelectorOne)){
    $(pyramidContentOne).fadeIn();
  } else if ((event.currentTarget === pyramidSelectorTwo)||(event.currentTarget === mediumPyramidSelectorTwo)){
    $(pyramidContentTwo).fadeIn();
  } else if ((event.currentTarget === pyramidSelectorThree)||(event.currentTarget === mediumPyramidSelectorThree)){
    $(pyramidContentThree).fadeIn();
  };
};


function pyramidSelector(){
  allPyramidSelectors.forEach((selector) => {
    selector.addEventListener('click',(event) => {
      deactivateAllSelectors();
      activateCurrentSelector(event);
      deactivateAllContent();
      activateCurrentContent(event);
    })
  })

  allMediumPyramidSelectors.forEach((selector) => {
    selector.addEventListener('click', (event) => {
      deactivateAllSelectors();
      activateCurrentSelector(event);
      deactivateAllContent();
      activateCurrentContent(event);
    })
  })
};

export { pyramidSelector };
