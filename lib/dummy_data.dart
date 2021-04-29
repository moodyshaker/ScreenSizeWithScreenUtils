class Category {
  String titlecat;
  String subtitle;
  Function onTap;
  String catimage;
  String salary;
  String weight;
  String buttoncar;
  String imagecar;

  Category(
      {this.titlecat,
      this.catimage,
      this.onTap,
      this.buttoncar,
      this.imagecar,
      this.salary,
      this.subtitle,
      this.weight});
}

final categoryList = [
  Category(
    catimage: "assets/images/shirt.png",
    titlecat: "تيشرت مقاس لارج",
    subtitle: "تيشرتات مقاس لارج خامة قطن",
    imagecar: 'assets/images/car.png',
    salary: '1500',
    weight: '10',
  ),
  Category(
      catimage: "assets/images/shirt.png",
      titlecat: "تيشرت مقاس لارج",
      subtitle: "تيشرتات مقاس لارج خامة قطن",
      imagecar: 'assets/images/car.png',
      salary: '1750',
      weight: '15'),
  Category(
      catimage: "assets/images/shirt.png",
      titlecat: "تيشرت مقاس لارج",
      subtitle: "تيشرتات مقاس لارج خامة قطن",
      imagecar: 'assets/images/car.png',
      salary: '1400',
      weight: '20'),
  Category(
      catimage: "assets/images/shirt.png",
      titlecat: "تيشرت مقاس لارج",
      subtitle: "تيشرتات مقاس لارج خامة قطن",
      imagecar: 'assets/images/car.png',
      salary: '1250',
      weight: '30'),
];
