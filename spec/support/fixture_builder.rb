FixtureBuilder.configure do |fbuilder|
  # rebuild fixtures automatically when these files change:
  fbuilder.files_to_check += Dir["spec/support/fixture_builder.rb"]

  # now declare objects
  fbuilder.factory do
    Car.create(
      name: "Stanyon",
      type: "economy",
      base_msrp: 14000,
      doors: 4
    )
    Car.create(
      name: "Stevella",
      type: "sedan",
      base_msrp: 18000,
      doors: 4
    )
    Car.create(
      name: "Stang",
      type: "coupe",
      base_msrp: 21000,
      doors: 2
    )
    Car.create(
      name: "Stingle",
      type: "crossover",
      base_msrp: 25000,
      doors: 5
    )
    Car.create(
      name: "Sturgis",
      type: "suv",
      base_msrp: 29000,
      doors: 5
    )

    cars = Car.all
    colors = ["blue", "green", "black", "pearlescent"]
    names = ["Sam", "Sally", "Sandy", "Salvadore"]
    cities = ["Oakland", "Berkeley", "San Francisco", "Oakland"]
    100.times do
      car = cars.sample
      purchase_date = (rand(7) + 1).days.ago
      Sale.create(
        car: car,
        customer_name: names.sample,
        customer_city: cities.sample,
        color: colors.sample,
        charge_price: car.base_msrp + 1/(rand(25) + 1)*car.base_msrp,
        created_at: purchase_date,
        updated_at: purchase_date
      )
    end
  end
end
