class Item {
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  double? price;

  Item(this.title, this.category, this.thumb_url, this.location, this.price);

  static List<Item> recommendation = [
    Item(
        "Modern House for renting",
        "House",
        "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?cs=srgb&dl=pexels-binyamin-mellish-106399.jpg&fm=jpg",
        "Georgia USA",
        2500),
    Item(
        "Big Villa",
        "Villa",
        "https://images.pexels.com/photos/32870/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Miami",
        13000),
    Item(
        "Small House",
        "House",
        "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Wessex London",
        1500),
    Item(
        "Luxiourus Apartament",
        "Apartament",
        "https://images.pexels.com/photos/6492397/pexels-photo-6492397.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
        "New York USA",
        10000),
  ];

  static List<Item> nearby = [
    Item(
        "Student Apartament",
        "Apartament",
        "https://images.pexels.com/photos/1643384/pexels-photo-1643384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Nice France",
        1000),
    Item(
        "Small Villa",
        "Villa",
        "https://images.pexels.com/photos/2480608/pexels-photo-2480608.jpeg?cs=srgb&dl=pexels-kimberly-mcneilus-2480608.jpg&fm=jpg",
        "Marseille France",
        2000),
    Item(
        "Family House",
        "House",
        "https://images.pexels.com/photos/262405/pexels-photo-262405.jpeg?cs=srgb&dl=pexels-pixabay-262405.jpg&fm=jpg",
        "Brest France",
        2200),
    Item(
        "Province House",
        "House",
        "https://images.pexels.com/photos/9876232/pexels-photo-9876232.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Alps",
        3000)
  ];
}
