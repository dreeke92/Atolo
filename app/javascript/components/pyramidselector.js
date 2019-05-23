const allPyramidSelectors = document.querySelectorAll('.pyramid-selector');
const pyramidSelectorOne = document.getElementById('pyramid-selector-one');
const pyramidSelectorTwo = document.getElementById('pyramid-selector-two');
const pyramidSelectorThree = document.getElementById('pyramid-selector-three');

const allPyramidContent = document.querySelectorAll('.pyramid-content');
const pyramidContentOne = document.getElementById('pyramid-content-one');
const pyramidContentTwo = document.getElementById('pyramid-content-two');
const pyramidContentThree = document.getElementById('pyramid-content-three');

function deactivateAllSelectors(){
  allPyramidSelectors.forEach((selector) => {
    selector.classList.remove("active");
  })
}

function activateCurrentSelector(event){
  if (event.currentTarget === pyramidSelectorOne){
    pyramidSelectorOne.classList.add("active");
  } else if (event.currentTarget === pyramidSelectorTwo){
    pyramidSelectorTwo.classList.add("active");
  } else if (event.currentTarget === pyramidSelectorThree){
    pyramidSelectorThree.classList.add("active");
  };
}

function deactivateAllContent(){
  allPyramidContent.forEach((content) => {
    content.style.display = 'none';
  });
};

function activateCurrentContent(event){
  if (event.currentTarget === pyramidSelectorOne){
    $(pyramidContentOne).fadeIn();
  } else if (event.currentTarget === pyramidSelectorTwo){
    $(pyramidContentTwo).fadeIn();
  } else if (event.currentTarget === pyramidSelectorThree){
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
};

export { pyramidSelector };
