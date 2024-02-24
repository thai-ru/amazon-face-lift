import '../../../constants/image_strings.dart';

class Promotions {
  String id;
  String name;
  String imageUrl;

  Promotions(
    this.id,
    this.name,
    this.imageUrl,
  );

  static List <Promotions> promotion = [
    Promotions("1", "Discount Alert!", ABannerOne),
    Promotions("2", "Loyalty",  ABannerTwo),
    Promotions("3", "Promotion", ABannerThree),
    Promotions("4", "Loyalty", ABannerFour),
  ];
}