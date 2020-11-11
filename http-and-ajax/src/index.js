const textInput = document.getElementById('keyword');
const ul = document.getElementById('results');
const form = document.getElementById('search-movies');

const fetchAddresses = (keyword) => {
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
}

const fetchMovies = (keyword) => {
  const ul = document.getElementById('results');

  fetch(`http://www.omdbapi.com/?apikey=adf1f2d7&s=${keyword}`)
    .then(response => response.json())
    .then((data) => {
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
  // ajax or javascript on a submission of a form
  fetchMovies(textInput.value);
})

// When typing on the input, we display locations that the
// algolia places API gives us!
textInput.addEventListener('keyup', (event) => {
  // fetchMovies(textInput.value);
  fetchAddresses(textInput.value);
})


// What are the elements involved? => querySelecting your elements
// When does something happen? => addEventListener
// What happens? => coding the callback of the eventListener
