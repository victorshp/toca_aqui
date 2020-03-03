# Criação de 4 usuários:
#   - 1 com 6 anúncios (só quer vender)
#   - 1 com 2 anúncios (quer vender e comprar)
#   - 1 com 0 anúncios (só quer comprar)
#   - 1 admin quer pode mexer em tudo.

puts "cleaning database"

Ingredient.destroy_all if Rails.env.development?

adm = User.create!(first_name: 'Rafael', last_name: 'Ravenscroft', email: 'admin@tocaaqui.com.br', password: 'password', admin: true)

u = User.create!(first_name: 'Billy', last_name: 'Mays', email: 'billy@mays.com', password: 'password')
Instrument.create!(description: 'Violão Tagima MD 20 dreadnought non-cutaway aço', name: 'Violão Eletroacústico', inst_type: 'Cordas', price: 260.00, user: u)
Instrument.create!(description: 'Saxofone Tenor Shelter Laqueado Dourado Sgft6435l', name: 'Saxofone Tenor', inst_type: 'Sopro', price: 2499.00, user: u)
Instrument.create!(description: 'Violino Eagle 4/4 Ve 441 Completo', name: 'Violino', inst_type: 'Cordas', price: 668.99, user: u)
Instrument.create!(description: 'Flauta Doce Yamaha Soprano Barroco YRS-302BIII Com Bag', name: 'Flauta Doce', inst_type: 'Sopro', price: 152.81, user: u)
Instrument.create!(description: 'Ukulele Acústico Giannini UKS-21 4 Cordas Nylon Natural Santin', name: 'Ukelele', inst_type: 'Cordas', price: 179.90, user: u)
Instrument.create!(description: 'Cajon Carron Acústico Inclinado Escudo Fé', name: 'Cajon', inst_type: 'Percussão', price: 119.99, user: u)

u2 = User.create!(first_name: 'Larissa', last_name: 'Machadp',email: 'larissa@machado.com.br', password: 'password')
Instrument.create!(description: 'Yamaha DTX720 k', name: 'Bateria Digital', inst_type: 'Percussão', price: 17002.30, user: u2)
Instrument.create!(description: 'Orgão Eletrônico', name: 'Orgão', inst_type: 'Teclado', price: 3654.00, user: u2)


u3 = User.create!(first_name: 'Wolfgang', last_name: 'Mozart', email: 'wolfgang@mozart.com', password: 'password')

puts 'we have #{Instrument.count} ingredients'
puts 'we have #{User.count} ingredients'
