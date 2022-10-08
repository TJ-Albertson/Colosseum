// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"

function dislikeClick() {
    // Return a new function that is called when
    // the click on the button is called
    return function (e) {
  
      // Find the closest `bar` parent
      const thumb = e.target.closest('.thumbs');
  
      // Grab the `p` element within that parents child elements
      const like = thumb.querySelector('.like-button');
  
      // Update the like variable
      like.querySelector("i").style.color="grey"
      this.querySelector("i").style.color="red"
    }
  }
  
  const getDislike = document.querySelectorAll(".dislike-button")
  
  getDislike.forEach(like => like.addEventListener('click', dislikeClick()));
  
  function likeClick() {
    // Return a new function that is called when
    // the click on the button is called
    return function (e) {
  
      // Find the closest `bar` parent
      const thumb = e.target.closest('.thumbs');
  
      // Grab the `p` element within that parents child elements
      const dislike = thumb.querySelector('.dislike-button');
  
      // Update the like variable
      dislike.querySelector("i").style.color="grey"
      this.querySelector("i").style.color="green"
    }
  }
  
  const getLike = document.querySelectorAll(".like-button")
  
  getLike.forEach(like => like.addEventListener('click', likeClick()));