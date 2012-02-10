# encoding: utf-8

Category.delete_all
Dish.delete_all

# Create categories
n = 1
["Barsnacks", "Lunchretter", "Hovedretter", "Desserter"].each do |category_title|
  category = Category.create(title: category_title, position: n)
  n += 1
end

# Barsnacks
barsnacks = Category.find_by_title("Barsnacks")
barsnacks.dishes.create(title: "Focacciasnack", description: "Hjemmelaget focacciabrød, serveres med pistou og aioli. Vegetar.", member_price: 19, regular_price: 29)
barsnacks.dishes.create(title: "Varm mandelpotet- og chorizosnack", description: "Ovnsbakte mandelpoteter med chorizo og gressløk.", member_price: 35, regular_price: 39)

lunch = Category.find_by_title("Lunchretter")
lunch.dishes.create(title: "Sesongsuppen", description: "Suppe etter sesongens råvarer. Spør i baren. Ofte vegetar.", member_price: 55, regular_price: 65)
lunch.dishes.create(title: "Grillet Lychebrød", description: "1. Grillet focacciabrød med and og spansk geitost. Toppes med frisk salat. Kan fås som vegetar.\n2. Grillet focacciabrød med chorizo og spansk geitost. Toppes med frisk salat.", member_price: 69, regular_price: 79)
lunch.dishes.create(title: "Lun Lychesalat", description: "Med and, bacon, og krydret kikertsaus. Serveres med hjemmelaget focacciabrød og tzatsiki. Kan fås som vegetar.", member_price: 69, regular_price: 79)

main = Category.find_by_title("Hovedretter")
main.dishes.create(title: "Lycheburger", description: "Lyches ubestridte klassiker. Med aioli, pistou, bacon, cheddarost og paprikasalsa. Serveres med ovnsbakte mandelpoteter.", member_price: 99, regular_price: 109)
main.dishes.create(title: "Dobbel Lycheburger", description: "Lycheburger i dobbeltdekkervariant. 260 gram ren Lyche.", member_price: 139, regular_price: 149)
main.dishes.create(title: "Vegetarburger", description: "Lyches vegetarburger. Med aioli, pistou, cheddarost, salat og paprikasalsa. Serveres med ovnsbakte mandelpoteter.", member_price: 89, regular_price: 99)
main.dishes.create(title: "Confiterte andelår", description: "Langtidsstekt, sprøtt andelår. Serveres med ovnsbakte grønnsaker, pastinakkpuré, appelsinsaus og ovnsbakte mandelpoteter.", member_price: 119, regular_price: 129)
main.dishes.create(title: "Ovnsbakt lakseloin", description: "Lakseloin med ovnsbakte grønnsaker og mandelpoteter, samt pastinakkpuré. Toppes med mandelvinaigrette.", member_price: 119, regular_price: 129)
main.dishes.create(title: "Greske lammepølser", description: "Lyches hjemmelagede lammepølser med karibisk mojosaus, tzatsiki og chorizobakte poteter.", member_price: 99, regular_price: 109)
main.dishes.create(title: "Grillet iberisk svin", description: "Frittgående iberisk svin med nøttepreg. Serveres med ovnsbakte grønnsaker, pastinakkpuré, rødvinsreduksjon og ovnsbakte mandelpoteter.", member_price: 145, regular_price: 159)
main.dishes.create(title: "Grillplanke", description: "Vår grillplanke med lammepølse, iberisk svin og andelår. Serveres med chorizobakte poteter, karibisk mojosaus og tzatsiki.", member_price: 145, regular_price: 159)

desserts = Category.find_by_title("Desserter")
desserts.dishes.create(title: "Sjokoladelyche", description: "Konfektkake av fyldig sjokolade, med pisket krem og bærsaus.", member_price: 35, regular_price: 45)
desserts.dishes.create(title: "Panna cotta", description: "Panna cotta med bærsaus.", member_price: 30, regular_price: 35)
