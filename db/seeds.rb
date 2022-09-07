puts 'cleaning DB'
Marque.destroy_all
Produit.destroy_all
User.destroy_all

puts 'seeds user'
admin = User.create!(email: 'admin@crushon.com', password: '123456', password_confirmation: '123456', admin: true)
jude = User.create!(email: 'jude@crushon.com', password: '123456', password_confirmation: '123456', nom_boutique: 'Jude', admin: false)

puts 'seeds marque'
hermes= Marque.create!(nom_marque: 'adidas')
balmain = Marque.create!(nom_marque: 'balmain')
cacharel = Marque.create!(nom_marque: 'cacharel')
dior = Marque.create!(nom_marque: 'dior')
ellesse = Marque.create!(nom_marque: 'ellesse')
fila = Marque.create!(nom_marque: 'fila')
givenchy = Marque.create!(nom_marque: 'givenchy')
hermes= Marque.create!(nom_marque: 'hermes')

puts 'seeds produit'
Produit.create!(titre: 'joli robe', prix: '20', stock: '2', marque: dior, user: jude )
Produit.create!(titre: 'joli joli', prix: '10', stock: '1', marque: hermes, user: admin )

puts 'done'
