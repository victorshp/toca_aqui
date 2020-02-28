u = User.create!(email: 'teste@teste.com.br', password: 'password')

Instrument.create!(name: 'violino', inst_type: 'cordas', price: 899.00, user: u)
Instrument.create!(name: 'piano', inst_type: 'cordas', price: 20770.00, user: u)
Instrument.create!(name: 'violoncelo', inst_type: 'cordas', price: 1499.00, user: u)
Instrument.create!(name: 'flauta transversal', inst_type: 'cordas', price: 499.00, user: u)
Instrument.create!(name: 'viola caipira', inst_type: 'cordas', price: 799.00, user: u)
Instrument.create!(name: 'baixo', inst_type: 'cordas', price: 599.00, user: u)
