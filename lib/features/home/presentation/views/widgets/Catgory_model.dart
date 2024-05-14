class CatgoryModel {
  final String name;
  final String image;

  CatgoryModel({required this.image, required this.name});
}

class CatgoryForm {
  static List<CatgoryModel> catgoryForm = [
    CatgoryModel(image: 'assets/test.png', name: 'Vaggies'),
    CatgoryModel(image: 'assets/FruitsCatogries.png', name: 'Fruits'),
    CatgoryModel(image: 'assets/MeatCategories.png', name: 'Meat'),
    CatgoryModel(image: 'assets/DairyCategories.png', name: 'Dairy')
  ];
}
