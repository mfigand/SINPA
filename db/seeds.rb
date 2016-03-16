hugo, paco, luis = User.create([
  {name: 'Hugo', email: 'hugo@gmail.com', password: '12345678', password_confirmation: '12345678', kms: 50},
  {name: 'Paco', email: 'paco@gmail.com',  password: '12345678', password_confirmation: '12345678', kms: 30},
  {name: 'Luis', email: 'luis@gmail.com',  password: '12345678', password_confirmation: '12345678', kms: 150}
])

manolos, cines_ideal, lalatina_teather, bikers = Branch.create([
  {name: 'Los Manolos', address: 'Plaza Mayor', city: 'Madrid', phone: '555666777', company_id: '1'},
  {name: 'Cines Ideal 1', address: 'Jacinto Benavente', city: 'Madrid', phone: '555666777', company_id: '2'},
  {name: 'Cines Ideal 2', address: 'Plaza norte', city: 'Madrid', phone: '555666777', company_id: '2'},
  {name: 'Teatro La Latina', address: 'La Latina', city: 'Madrid', phone: '555666777', company_id: '3'},
  {name: 'Bikers 1', address: 'Madrid río', city: 'Madrid', phone: '555666777', company_id: '4'},
  {name: 'Bikers 2', address: 'EL retiro', city: 'Madrid', phone: '555666777', company_id: '4'}
])

casa_manolo, cines_ideal, lalatina_teather, bikers = Company.create([
  {name: 'Casa Manolo', email: 'casamanolo@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Cines Ideal', email: 'cinesideal@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Teatro La Latina', email: 'teatrolalatina@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Bikers', email: 'bikers@gmail.com', password: '12345678', phone: '555666777'}
])

coupon1, coupon2, coupon3 = Coupon.create([
  {code: 'abc1', kms_cost: 10, redeemed: 'charged', user_id: 1, employee_id: 1, reward_id: 1},
  {code: 'abc2', kms_cost: 40, redeemed: 'charged', user_id: 1, employee_id: 2, reward_id: 2},
  {code: 'abc3', kms_cost: 50, redeemed: 'pending', user_id: 2, employee_id: 4, reward_id: 3},
  {code: 'abc4', kms_cost: 20, redeemed: 'pending', user_id: 3, employee_id: 5, reward_id: 4}
])

juan, juana, mario, maria, jose, pepe, pedro, manu = Employee.create([
  {name: 'Juan', email: 'juan@gmail.com', branch_id: 1, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Juana', email: 'juana@gmail.com', branch_id: 1,  password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'mario', email: 'mario@gmail.com', branch_id: 2, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'maria', email: 'maria@gmail.com', branch_id: 3, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'jose', email: 'jose@gmail.com', branch_id: 4, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'pepe', email: 'pepe@gmail.com', branch_id: 5, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'pedro', email: 'pedro@gmail.com', branch_id: 6, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'manu', email: 'manu@gmail.com', branch_id: 6, password: '12345678', password_confirmation: '12345678', phone: '555666777'}
])


race1, race2, race3, race4, race5, race6 = Race.create([
  {kms: 9, sync_date: Time.now.to_date-1.day, source: 'runtastic', user_id: 1},
  {kms: 10, sync_date: Time.now.to_date-2.day, source: 'nikerunning', user_id: 1},
  {kms: 5, sync_date: Time.now.to_date-1.day, source: 'endomondo', user_id: 2},
  {kms: 12, sync_date: Time.now.to_date-5.day, source: 'sporttracker', user_id: 2},
  {kms: 10, sync_date: Time.now.to_date-3.day, source: 'tomtom', user_id: 3},
  {kms: 8, sync_date: Time.now.to_date-4.day, source: 'runkeeper', user_id: 3}
])

coffee, popcorns, theater_ticket, bike_service = Reward.create([
  {name: 'Coffee', kms_cost: 10, code: 'freecoffee', description: 'freecoffee', valid_from: Time.now.to_date-15.day, valid_through: Time.now.to_date+15.day, available_units: 10, branch_id: 1},
  {name: 'Popcorns', kms_cost: 40, code: 'freepopcorns', description: 'freepopcorns', valid_from: Time.now.to_date-10.day, valid_through: Time.now.to_date+20.day, available_units: 5, branch_id: 2},
  {name: 'Theater ticket', kms_cost: 50, code: 'freetheater', description: 'freetheater', valid_from: Time.now.to_date-5.day, valid_through: Time.now.to_date+25.day, available_units: 3, branch_id: 4},
  {name: 'Bike_service', kms_cost: 20, code: 'freeservice', description: 'freeservice', valid_from: Time.now.to_date, valid_through: Time.now.to_date+30.day, available_units: 10, branch_id: 5}
])
