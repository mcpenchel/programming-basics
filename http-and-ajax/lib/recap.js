// Select 1 one element

document.querySelector('.some_css_class')

// Select multiple elements

document.querySelectorAll('.some_css_class')

// Simple Event Listener

const button = document.querySelector('#the_button')

button.addEventListener('click', (event) => {
  console.log("Do something interesting!");
})
