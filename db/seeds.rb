hugo, paco, luis = User.create([
  {name: 'Hugo', email: 'hugo@gmail.com', password: '12345678', password_confirmation: '12345678', kms: 50},
  {name: 'Paco', email: 'paco@gmail.com',  password: '12345678', password_confirmation: '12345678', kms: 30},
  {name: 'Luis', email: 'luis@gmail.com',  password: '12345678', password_confirmation: '12345678', kms: 150}
])

coffee, popcorns, theater_ticket, bike_service = Reward.create([
  {name: 'Coffee', kms_cost: 10, code: 'freecoffee'},
  {name: 'Popcorns', kms_cost: 40, code: 'freepopcorns'},
  {name: 'Theater ticket', kms_cost: 50, code: 'freetheater'},
  {name: 'Bike_service', kms_cost: 20, code: 'freeservice'}
])

casa_manolo, cines_ideal, lalatina_teather, bikers = Company.create([
  {name: 'Casa Manolo', email: 'casamanolo@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Cines Ideal', email: 'cinesideal@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Teatro La Latina', email: 'teatrolalatina@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Bikers', email: 'bikers@gmail.com', password: '12345678', phone: '555666777'}
])

manolos, cines_ideal, lalatina_teather, bikers = Branch.create([
  {name: 'Los Manolos', address: 'Plaza Mayor', city: 'Madrid', phone: '555666777'},
  {name: 'Cines Ideal 1', address: 'Jacinto Benavente', city: 'Madrid', phone: '555666777'},
  {name: 'Cines Ideal 2', address: 'Plaza norte', city: 'Madrid', phone: '555666777'},
  {name: 'Teatro La Latina', address: 'La Latina', city: 'Madrid', phone: '555666777'},
  {name: 'Bikers 1', address: 'Madrid río', city: 'Madrid', phone: '555666777'},
  {name: 'Bikers 2', address: 'EL retiro', city: 'Madrid', phone: '555666777'}
])

juan, juana, juanito = Employee.create([
  {name: 'Juan', email: 'juan@gmail.com', password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Juana', email: 'juana@gmail.com',  password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Juanito', email: 'juanito@gmail.com',  password: '12345678', password_confirmation: '12345678', phone: '555666777'}
])
