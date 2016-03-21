hugo, paco, luis = User.create([
  {name: 'Hugo', email: 'hugo@gmail.com', password: '12345678', password_confirmation: '12345678'},
  {name: 'Paco', email: 'paco@gmail.com',  password: '12345678', password_confirmation: '12345678'},
  {name: 'Luis', email: 'luis@gmail.com',  password: '12345678', password_confirmation: '12345678'}
])

manolos, cines_ideal, lalatina_teather, bikers = Branch.create([
  {name: 'Manolos', address: 'Plaza Mayor', latitude:'40.415511', longitude:'-3.7095896', city: 'Madrid', phone: '555666777', company_id: 1},
  {name: 'Cines Ideal 1', address: 'Jacinto Benavente', latitude:'40.4145051', longitude:'-3.7058419', city: 'Madrid', phone: '555666777', company_id: 2},
  {name: 'Cines Ideal 2', address: 'Plaza norte', latitude:'40.4749404', longitude:'-3.7055889', city: 'Madrid', phone: '555666777', company_id: 2},
  {name: 'Teatro La Latina', address: 'La Latina', latitude:'40.4114674', longitude:'-3.7109282', city: 'Madrid', phone: '555666777', company_id: 3},
  {name: 'Bikers 1', address: 'Madrid río', latitude:'40.3998406', longitude:'-3.7160296', city: 'Madrid', phone: '555666777', company_id: 4},
  {name: 'Bikers 2', address: 'EL retiro', latitude:'40.4152606', longitude:'-3.6866882', city: 'Madrid', phone: '555666777', company_id: 4}
])

casa_manolo, cines_ideal, lalatina_teather, bikers = Company.create([
  {name: 'Casa Manolo', email: 'casamanolo@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Cines Ideal', email: 'cinesideal@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Teatro La Latina', email: 'teatrolalatina@gmail.com', password: '12345678', phone: '555666777'},
  {name: 'Bikers', email: 'bikers@gmail.com', password: '12345678', phone: '555666777'}
])

# coupon1, coupon2, coupon3 = Coupon.create([
#   {code: 'una1', kms_cost: 10, redeemed: 'pending', user_id: 1, employee_id: 1, reward_id: 1},
#   {code: 'una2', kms_cost: 40, redeemed: 'pending', user_id: 1, employee_id: 2, reward_id: 2},
#   {code: 'una3', kms_cost: 50, redeemed: 'pending', user_id: 2, employee_id: 4, reward_id: 3},
#   {code: 'una4', kms_cost: 20, redeemed: 'pending', user_id: 3, employee_id: 5, reward_id: 4}
# ])
#
# 1.upto(25) do |index|
#   coupon = Coupon.create(
#   code: "#{index}",
#   kms_cost: 10,
#   redeemed: 'pending',
#   )
# end

km1, km2, km3 = Km.create([
  {kms: 80, user_id: 1},
  {kms: 10, user_id: 2},
  {kms: 150, user_id: 3}
])


juan, juana, mario, maria, jose, pepe, pedro, manu = Employee.create([
  {name: 'Juan', email: 'juan@gmail.com', branch_id: 1, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Juana', email: 'juana@gmail.com', branch_id: 1,  password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Mario', email: 'mario@gmail.com', branch_id: 2, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Maria', email: 'maria@gmail.com', branch_id: 3, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Jose', email: 'jose@gmail.com', branch_id: 4, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Pepe', email: 'pepe@gmail.com', branch_id: 5, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Pedro', email: 'pedro@gmail.com', branch_id: 6, password: '12345678', password_confirmation: '12345678', phone: '555666777'},
  {name: 'Manu', email: 'manu@gmail.com', branch_id: 6, password: '12345678', password_confirmation: '12345678', phone: '555666777'}
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
  {name: 'Coffee', kms_cost: 10, code: 'freecoffee', description: 'free coffee', valid_from: Time.now.to_date-15.day, valid_through: Time.now.to_date+15.day, available_units: 2, branch_id: 1},
  {name: 'Popcorns', kms_cost: 10, code: 'freepopcorns', description: 'free popcorns', valid_from: Time.now.to_date-10.day, valid_through: Time.now.to_date+20.day, available_units: 5, branch_id: 2},
  {name: 'Theater ticket', kms_cost: 50, code: 'freetheater', description: 'free theater', valid_from: Time.now.to_date-5.day, valid_through: Time.now.to_date+25.day, available_units: 4, branch_id: 4},
  {name: 'Bike service', kms_cost: 20, code: 'freeservice', description: 'free service', valid_from: Time.now.to_date, valid_through: Time.now.to_date+30.day, available_units: 20, branch_id: 5}
])
