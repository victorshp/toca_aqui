u = User.create!(email: 'teste@teste.com.br', password: 'password')
u_dois = User.create!(email: 'teste2@teste.com.br', password: 'password')
u_tres = User.create!(email: 'teste3@teste.com.br', password: 'password')

Instrument.create!(name: 'violino', inst_type: 'cordas', price: 899.00, user: u)
Instrument.create!(name: 'piano', inst_type: 'cordas', price: 20770.00, user: u)
Instrument.create!(name: 'violoncelo', inst_type: 'cordas', price: 1499.00, user: u)
Instrument.create!(name: 'flauta transversal', inst_type: 'cordas', price: 499.00, user: u)
Instrument.create!(name: 'viola caipira', inst_type: 'cordas', price: 799.00, user: u)
Instrument.create!(name: 'baixo', inst_type: 'cordas', price: 599.00, user: u)


Instrument.create!(name: 'harpa', inst_type: 'cordas', price: 2499.00, user: u_dois)
Instrument.create!(name: 'bandolim', inst_type: 'cordas', price: 299.00, user: u_dois)
Instrument.create!(name: 'guitarra eletrica', inst_type: 'cordas', price: 1599.00, user: u_dois)

