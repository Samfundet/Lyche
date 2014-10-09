# encoding: utf-8

Category.delete_all
Dish.delete_all

# Create categories
n = 1
["Småretter", "Burgere", "Hovedretter", "Dessert"].each do |category_title|
  category = Category.create(title: category_title, position: n)
  n += 1
end

small_dishes = Category.find_by_title("Småretter")
small_dishes.dishes.create(title: "Sidesalat", description: "Med cherrytomater og valnøttsaus.", member_price: 19, regular_price: 29)
small_dishes.dishes.create(title: "Lyches rødbetebrød", description: "Serveres med urtesmør.", member_price: 19, regular_price: 29)
small_dishes.dishes.create(title: "Hvitvinsdampede blåskjell", description: "Serveres med Lyches focaccia og urtesmør.", member_price: 79, regular_price: 95)
small_dishes.dishes.create(title: "Husets suppe", description: "Varierer etter sesong. Spør en av våre servitører om dagens suppe.", member_price: 59, regular_price: 75)

burgers = Category.find_by_title("Burgere")
burgers.dishes.create(title: "Lycheburger", description: "Serveres med aioli, cherrytomater, salat, paprikasalsa, ost, bacon, pistou og ovnsbakte poteter.", member_price: 99, regular_price: 109)
burgers.dishes.create(title: "Dobbel Lycheburger", description: "", member_price: 139, regular_price: 155)
burgers.dishes.create(title: "Blåmuggburger", description: "Serveres med aioli, cherrytomater, salat, blåmuggost fra Selbu, søt og syrlig valnøttsaus, pistou og ovnsbakte poteter.", member_price: 99, regular_price: 109)
burgers.dishes.create(title: "Dobbel blåmuggburger", description: "", member_price: 149, regular_price: 165)
burgers.dishes.create(title: "Reinsdyrburger", description: "Serveres med tyttebærdressing, sopp, spinat, kjørvelpistou og ovnsbakte poteter.", member_price: 109, regular_price: 119)
burgers.dishes.create(title: "Vegetarburger", description: "Serveres med aioli, cherrytomater, paprikasalsa, ost, pistou og ovnsbakte poteter.", member_price: 85, regular_price: 99)

main_courses = Category.find_by_title("Hovedretter")
main_courses.dishes.create(title: "Flattbiff av lam", description: "Ovnstekt. Serveres med eplesiderglaze, ovnsbakte rotgrønnsaker, sopp og potetpuré.", member_price: 149, regular_price: 165)
main_courses.dishes.create(title: "Steinbit", description: "Serveres med eplesmørsaus, ovnsbakte rotgrønnsaker og potetpuré.", member_price: 119, regular_price: 129)
main_courses.dishes.create(title: "Portobellosopp", description: "Fylt med quinoa og gratinert med parmesan. Serveres med soltørkede tomater og ovnsbakte rotgrønnsaker.", member_price: 99, regular_price: 119)

desserts = Category.find_by_title("Dessert")
desserts.dishes.create(title: "Husets is", description: "Lyches hjemmelagede iskrem og / eller sorbet. Spør en av våre servitører om dagens smaker.", member_price: 35, regular_price: 40)
desserts.dishes.create(title: "Sitronterte", description: "Serveres med flambert marengs og bringebærcoulis.", member_price: 45, regular_price: 55)
desserts.dishes.create(title: "Melkesjokolademousse", description: "Serveres med nøtter, bringebærcoulis og friske bær.", member_price: 49, regular_price: 59)
