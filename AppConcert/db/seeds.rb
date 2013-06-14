# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# data inicial!
sexs = Sex.create([{ name: 'Hombre' }, { name: 'Mujer' }, { name: 'Otros' }])
typeusers = Typeuser.create([{ name: 'Administrador' }, { name: 'Alumno' }, { name: 'Usuarios' }])
typedocuments = Typedocument.create([{ name: 'TIU' }, { name: 'DNI' }])

styles = Style.create([{ name: 'Rock' }, { name: 'Indie Folk' }, { name: 'Pop' },{ name: 'Musical' }])

distrits = District.create ([{ name: 'Ancon' }, { name: 'Ate' }, { name: 'Barranco' },
					   { name: 'Brena' }, { name: 'Carabayllo' }, { name: 'Cercado de Lima' },
					   { name: 'Chaclacayo' }, { name: 'Chorrillos' }, { name: 'Cieneguilla' },
					   { name: 'Comas' }, { name: 'El Agustino' }, { name: 'Independencia' },
					   { name: 'Jesus Maria' }, { name: 'La Molina' }, { name: 'La Victoria' },
					   { name: 'Lurin' }, { name: 'Los Olivos' }, { name: 'Lurigancho-Chosica' },
					   { name: 'Magdalena del Mar' }, { name: 'Pueblo Libre' }, { name: 'Miraflores' },
					   { name: 'Pucusana' }, { name: 'Puente Piedra' }, { name: 'Punta Hermosa' },
					   { name: 'Punta Negra' }, { name: 'Rimac' }, { name: 'San Bartolo' },
					   { name: 'San Borja' }, { name: 'San Isidro' }, { name: 'San Juan de Lurigancho' },
					   { name: 'San Juan de Miraflores' }, { name: 'San Luis' }, { name: 'San Martin de Porres' },
					   { name: 'San Miguel' }, { name: 'Santa Anita' }, { name: 'Santa Maria del Mar' },
					   { name: 'Santa Rosa' }, { name: 'Santiago de Surco' }, { name: 'Surquillo' },
					   { name: 'Villa El Salvador' }, { name: 'Villa Maria del Triunfo' }])

places = Place.create([{ name: 'UPC', address:'Angamos Este 2390', 
						 phone: '54565', 
						 longitude: -76.963016, 
						 latitude: -12.104106, district_id: 38 , gmaps: 1 }])

User.create([{ name: 'Administrador del Sistema', typeuser_id: 1, typedocument_id: 1, sexes_id: 1,
			document: '12345678', email: 'admin@mail.com' ,password: '123456' }])

