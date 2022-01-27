import 'package:firfood/model/recipe.dart';

List<Recipe> getRecipes() {
  return [
    Recipe(
      id: '0',
      type: RecipeType.plat,
      name: 'Foutou Banane',
      duration: Duration(minutes: 15),
      ingredients: [
        '100g of oats',
        '100ml of milk',
        'Fruits of your choice',
        'Honey',
        'Cinnamon',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      country: 'Burkina Faso',
      imageURL:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2017/01/Foutou-Banane-1.jpg',
    ),
    Recipe(
      id: '1',
      type: RecipeType.plat,
      name: 'Riz Soumbala',
      duration: Duration(minutes: 20),
      ingredients: [
        '2 eggs',
        '100ml of milk',
        '50g of flour',
        '10g of butter',
        'Baking powder',
        'Maple syrup',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      country: 'Burkina Faso',
      imageURL:
          'https://4.bp.blogspot.com/-Eg319If9i_I/WFdXtATPm4I/AAAAAAAABm4/jRMlb9hx-ukALp_CeehwA5y_DboEpJQuQCLcB/s1600/riz_gras_soumbala.jpg',
    ),
    Recipe(
      id: '2',
      type: RecipeType.boisson,
      name: 'Bissap',
      duration: Duration(minutes: 10),
      ingredients: [
        '100g of strawberries',
        '500ml of water',
        '2 teaspoons of sugar',
        'Juice of half a lemon',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      country: 'Burkina Faso',
      imageURL:
          'https://lorbeducafe.re/wp-content/uploads/2019/03/bissap-Jus.png',
    ),
    Recipe(
      id: '3',
      type: RecipeType.boisson,
      name: 'pain de singe',
      duration: Duration(minutes: 10),
      ingredients: [
        '100g of fresh blueberries',
        '200g of plain yoghurt',
        '100g of milk',
        '1 banana',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      country: 'Burkina Faso',
      imageURL:
          'https://lepetitjournal.com/sites/default/files/inline-images/jus%20de%20bouye.jpg',
    ),
  ];
}

List<String> getFavoritesIDs() {
  return [
    '0',
    '2',
    '3',
  ];
}
