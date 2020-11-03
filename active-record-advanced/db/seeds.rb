# This is where you can create initial data for your app.

tex = Doctor.create(
  first_name: "Thiago",
  last_name: "Teixeira",
  specialty: "Neurologist"
)

alia = Doctor.create(
  first_name: "Ália",
  last_name: "Penchel",
  specialty: "Surgeon"
)

Intern.create(
  first_name: "Tomas",
  last_name: "Gomes",
  doctor: tex
)

Intern.create(
  first_name: "Filipe",
  last_name: "Alencar",
  doctor: tex
)
