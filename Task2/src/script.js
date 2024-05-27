function makeCar(make, model, year, colore) {
  return {
    make: make,
    model: model,
    year: year,
    colore: colore,
  };
}

const cars = [
  makeCar('Lada', 'Granta', 2020, 'Black'),
  makeCar('Hyundai', 'Solaris', 2018, 'White'),
];

console.log(cars.filter(car => car.year > 2019));
