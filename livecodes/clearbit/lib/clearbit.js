// 1st - [OK] get the input's value and store it into a variable
// 2nd - [OK] add an event (submit) listener to the form
// 3rd - [OK] build the AJAX function
// 4th - [OK] call the AJAX function on the callback of the event listener
// 5th - [OK] investigate the HTML to be able to interact with the
// information "containers", so to speak, so we can update them
// 6th - [OK] Update the DOM with the information!
// 7th - [OK] Refactor the code! With functions!

const authorization = "Bearer sk_e7fd564fc3c1eaffae41e71dfa576879";
const emailInput = document.getElementById('clearbitEmail');
const form = document.getElementById('clearbitForm');

form.addEventListener('submit', (event) => {
  event.preventDefault();
  fetchData(emailInput.value);
})

const updateInformation = (json) => {
  emailInput.value = "";
  if (json.error) {
    window.alert("Please try again!")
  } else {
    console.log(json);

    const name = document.getElementById('userName');
    const email = document.getElementById('userEmail');
    const bio = document.getElementById('userBio');
    const location = document.getElementById('userLocation');

    name.innerText = json.name.fullName;
    email.innerText = json.email;
    bio.innerText = json.bio;
    location.innerText = json.location;
  }
}

const fetchData = (emailAddress) => {
  fetch(`https://person.clearbit.com/v1/people/email/${emailAddress}`, {
    headers: { Authorization: authorization }
  })
    .then(response => response.json())
    .then(updateInformation)
}

