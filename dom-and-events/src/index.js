console.log("Hello from src/index.js!");

// Selector methods (+ descending + child combinator + chaining selectors)
  // querySelector returns the first found element
  document.querySelector('span')
  document.querySelector('h1')
  document.querySelector('h2.class_name')
  document.querySelector('.the_class_name')
  document.querySelector('#the_id')

  // returns a NodeList (array) with all the elements found
  document.querySelectorAll('.the_class_name')

  // getElementById is the querySelector for ids, so you don't specify
  // the # in the beginning of the string
  document.getElementById('the_id')

// Append Content
  // 1st. capture the element relevant to you
  const teamsUl = document.querySelector('ul');

  // 2nd. build what you want to append
  let flamengoLi = "<li>Flamengo (yikes)</li>";

  // 3rd. append it
  teamsUl.insertAdjacentHTML('beforeend', flamengoLi);

// Looping over NodeList
  const lis = document.querySelectorAll('li')

  lis.forEach((li) => {
    li.classList.toggle('big');
    // we can classList.add('class_name')
    // or classList.remove('class_name') as well
  })

// Show/Hide through display none / changing styling
  const li = document.querySelector('li');

  li.style.display = "none"; // to make it disappear
  li.style.display = "";     // to make it appear again

  li.style.color = "red";    // to make it red

// Inputs
  const emailInput = document.querySelector('input');

  emailInput.value // to get the value written inside the input
  emailInput.value = 'new@email.com' // to change the value inside the input

// innerText VS innerHTML
  // reading
  document.getElementById('welcome').innerText // gives us the TEXT
  document.getElementById('welcome').innerHTML // gives us the HTML

  // writing
  document.getElementById('welcome').innerText = "Rowan is a front-end guru"
  document.getElementById('welcome').innerHTML = "<div>Rowan is a <strong>front-end</strong> guru</div>"

// Dataset
  console.log(li.dataset.numberOfTitles);
  console.log(li.dataset.numberOfFans);

// Events (list on Slides)

// addEventListener + callback
  const romainImg = document.querySelector('img');

  romainImg.addEventListener('click', (event) => {
    console.log(event); // the event itself, which means, THE CLICK!!!
    console.log(event.currentTarget); // the element itself on which the event was fired
  })

// Livecode for clicking on images
  // Purpose: The images will gain a CSS class when we click on them;

  // 1st) What are the elements involved on what I need to do?
  // Answer: images!
  // Store the related elements on variables!!

  // 2nd) When will something happen? What is the event related?
  // Answer: the click event on the images!

  // 3rd) What happens?
  // Answer: the image clicked on receives a CSS class if it doesn't have it
  // or, lose it if it already has it
  // IMPORTANT: This is coded inside the callback of the addEventListener!!

  const images = document.querySelectorAll('img');

  images.forEach((image) => {
    image.addEventListener('click', (event) => {
      // image.classList.toggle('img-circle');
      event.currentTarget.classList.toggle('img-circle');
    })
  })

