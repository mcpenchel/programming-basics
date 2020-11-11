const textInput = document.getElementById('keyword');
const ul = document.getElementById('results');
const form = document.getElementById('search-movies');

const fetchAddresses = (keyword) => {
  // By default, fetch makes a GET request.
  // So to do a POST request with AJAX, we need to specify
  // a Javascript Object as a second argument to the method,
  // like following:
  fetch('https://places-dsn.algolia.net/1/places/query', {
    method: 'POST',
    body: JSON.stringify({query: keyword})
  })
    .then(response => response.json())
    .then((data) => {
      ul.innerHTML = '';
      data.hits.forEach((hit) => {
        const li = `<li class="list-inline-item">
            <p>${hit.locale_names.default[0]}</p>
          </li>`

        ul.insertAdjacentHTML('beforeend', li);
      });
    })

  // You will always need the JSON.stringify({}) when sending
  // information on the body of the request.

  // You will always need the two "then", be it a POST, GET,
  // PUT, PATCH or DELETE request :ok They are for treating the
  // information received from the API.
}

const fetchMovies = (keyword) => {
  const ul = document.getElementById('results');

  fetch(`http://www.omdbapi.com/?apikey=adf1f2d7&s=${keyword}`)
    .then(response => response.json())
    .then((data) => {
      // To delete everything inside an ul, or div, or any
      // type of HTML element, just assign an empty string to
      // it's innerHTML property ;)
      ul.innerHTML = '';

      data.Search.forEach((movieObject) => {
        const li = `<li class="list-inline-item">
            <img src="${movieObject.Poster}" alt="">
            <p>${movieObject.Title}</p>
          </li>`

        ul.insertAdjacentHTML('beforeend', li);
      })
    })
}

// When submitting the form, we display movies that the
// OMDB API gives us!
form.addEventListener('submit', (event) => {
  event.preventDefault(); // we always need this when doing
  // ajax or javascript on a submission of a form, or else
  // the form will be submitted and the page will reload ;__;
  fetchMovies(textInput.value);
})

// When typing on the input, we display locations that the
// algolia places API gives us!
textInput.addEventListener('keyup', (event) => {
  // fetchMovies(textInput.value);
  fetchAddresses(textInput.value);
})

// JavaScript mindset: the three fundamental questions!
// 1) What are the elements involved? => querySelecting your elements
// 2) When does something happen? => addEventListener
// 3) What happens? => coding the callback of the eventListener
