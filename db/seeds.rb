# encoding: utf-8

Category.delete_all
Dish.delete_all

# Create categories
n = 1
["Barsnacks", "Småretter", "Hovedretter", "Desserter", "For små Lychetroll"].each do |category_title|
  category = Category.create(title: category_title, position: n)
  n += 1
end

# Barsnacks
barsnacks = Category.find_by_title("Barsnacks")
barsnacks.dishes.create(title: "Focacciasnack", description: "Lyches hjemmelagede focaccia, serveres med aioli.", member_price: 19, regular_price: 29)
barsnacks.dishes.create(title: "Chorizosnack", description: "Chorizobakte småpoteter med pistou og en skål røkt BBQ­saus.", member_price: 39, regular_price: 44)
barsnacks.dishes.create(title: "Sidesalat", description: "En liten salat. Kan nytes for seg selv, eller til andre retter.", member_price: 29, regular_price: 39)

lunch = Category.find_by_title("Småretter")
lunch.dishes.create(title: "Suppeliten", description: "Månedens suppe, servert i forrettstørrelse. Kan ofte fås som vegetar, spør i baren.", member_price: 39, regular_price: 44)
lunch.dishes.create(title: "Hvitvinsdampede blåskjell", description: "Dampede blåskjell i syrlig, kremet saus.", member_price: 89, regular_price: 114)
lunch.dishes.create(title: "Chorizopasta", description: "Pasta med kremet, pikant chorizosaus og manchegodryss.", member_price: 69, regular_price: 84)

main = Category.find_by_title("Hovedretter")
main.dishes.create(title: "Lycheburger", description: "Lyches ubestridte klassiker. Serveres med aioli, bacon, cheddarost, pistou, paprikasalsa og ovnsbakte småpoteter. Burgeren inneholder svin.", member_price: 99, regular_price: 119)
main.dishes.create(title: "Dobbel Lycheburger", description: "Lycheburger i dobbeltdekkervariant. 250 gram ren Lyche. Serveres med aioli, bacon, cheddarost, pistou, paprikasalsa og ovnsbakte småpoteter. Burgeren inneholder svin.", member_price: 139, regular_price: 155)
main.dishes.create(title: "Kykkeliburger", description: "Lyches kyllingburger. Serveres med aioli, manchegodressing, pistou og ovnsbakte småpoteter.", member_price: 99, regular_price: 119)
main.dishes.create(title: "Vegetarburger", description: "Lyches vegetarburger. Serveres med aioli, cheddarost, pistou, paprikasalsa og ovnsbakte småpoteter.", member_price: 89, regular_price: 109)
main.dishes.create(title: "Gladlaks", description: "Ovnsbakt lakseloin, serveres med mandelvinaigrette, søtpotetpuré, småpoteter og ovnsbakte grønnsaker.", member_price: 119, regular_price: 139)
main.dishes.create(title: "Pluma", description: "Frittgående iberisk svin fra Spania. Servers med søtpotetpuré, syrlig rødvinsreduksjon, småpoteter og ovnsbakte grønnsaker.", member_price: 149, regular_price: 169)
main.dishes.create(title: "Heldiggrisen Babe", description: "BBQ­glasert skinkeskive med smørdampet pak choi, søtpotetpuré og ­timbal, småpoteter og dijonkrem.", member_price: 99, regular_price: 119)
main.dishes.create(title: "Heisann Portobello", description: "Ovnsbakt portobellosopp. Fylt med tomat­ og quinoasaus, og gratinert med manchego. Serveres med søtpotetpuré og –timbal, og soltørket tomat. Vegetar.", member_price: 99, regular_price: 119)
main.dishes.create(title: "Frisk falafelfryd", description: "Salat med falafler, sprøstekt bacon, marinerte kikerter og sukkererter. Serveres med focaccia og aioli.", member_price: 79, regular_price: 99)
main.dishes.create(title: "Månedens suppe", description: "Hver måned disker Lychekjøkkenet opp med en ny suppe. Serveres med focaccia og smør. Kan ofte fås som vegetar, spør i baren.", member_price: 59, regular_price: 75)

desserts = Category.find_by_title("Desserter")
desserts.dishes.create(title: "Karl Oris favoritt", description: "En mektig sjokoladeterrin fylt med Oreokjeks. Toppes med syrlig ostekrem og bringebærcoulis.", member_price: 49, regular_price: 59)
desserts.dishes.create(title: "Flambert lidenskap", description: "Créme brûlée med pasjonsfrukt. Serveres med bringebærsorbét.", member_price: 39, regular_price: 49)
desserts.dishes.create(title: "Tilslørte bondepiker", description: "En dessert av crumble, eplemos og syrlig ostekrem. Servers med bringebærcoulis.", member_price: 39, regular_price: 49)

childrens_dishes = Category.find_by_title("For små Lychetroll")
childrens_dishes.dishes.create(title: "Lycheliten", description: "En mindre variant av Lycheburgeren.", member_price: 75, regular_price: 75)
childrens_dishes.dishes.create(title: "Nasse Nøff", description: "En liten variant av glasert skinke.", member_price: 75, regular_price: 75)
