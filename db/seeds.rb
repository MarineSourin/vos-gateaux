# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
ingredients = ["Abricot", "Abricot sec", "Ail", "Amande", "Artichaut", "Asperge", "Aubergine", "Avocat", "Banane", "Basilic", "Bette",
                "Betterave", "Blanc de dinde", "Blanc de poulet", "Blette", "Brocoli", "Cacahuète", "Cacao en poudre", "Carotte", "Céleri", "Champignon",
                "Choux", "Citrouille", "Chocolat au lait", "Chocolat noir", "Comté ", "Concombre", "Cornichon", "Couli de tomate", "Courge", "Courgette", "Crème fraiche",
                "Crème liquide", "Cresson", "Datte", "Échalote", "Emmental", "Endive", "Épinard", "Fenouil ", "Fève", "Flageolet",
                "Frisée", "Fromage râpé ", "Gingembre", "Haricot rouge", "Haricot vert", "Jambon", "Ketchup", "Lait", "Lait végétal",
                "Laitue", "Lardons", "Lentille", "Levure chimique", "Mâche", "Maïs", "Margarine", "Mayonnaise", "Miel", "Moutarde", "Mozzarella ",
                "Navet", "Noix", "Noix de cajou", "Noix de coco", "Œufs", "Oignon", "Olive noire", "Olive verte", "Origan", "Pâte à pizza",
                "Pâte brisée", "Pâte feuilletée", "Petits pois", "Poire", "Poireau", "Poivron jaune", "Poivron rouge", "Poivron vert", "Pomme",
                "Pomme de terre", "Potimarron", "Potiron", "Radis", "Rhubarbe", "Sauce tomate", "Saumon", "Soja", "Sucre vanillé", "Thon",
                "Tomate", "Vanille", "Viande rouge", "Yaourt nature"]

ingredients.each do |ingredient|
  Ingredient.create nom: ingredient
end
