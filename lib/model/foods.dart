class Foods {
  final String food;
  final String image;
  final String ingredients;
  final String cookingSteps;

  Foods(this.food, this.image, this.ingredients, this.cookingSteps);

  static Foods getJsonParser(dynamic json) {
    String food = json['food'];
    String image = json['image'];
    String ingredients = json['ingredients'];
    String cookingSteps = json['cooking_steps'];

    return new Foods(food, image, ingredients, cookingSteps);
  }
}
