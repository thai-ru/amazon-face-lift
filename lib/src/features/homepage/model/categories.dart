import 'package:amazon/src/constants/image_strings.dart';

class Category {
  String Id;
  String Name;
  String imageUrl;
  String Description;

  Category (
      this.Id,
      this.Name,
      this.Description,
      this.imageUrl,
      );

  static List<Category> categories = [

    Category("1", "Groceries", "Amazon Personal Assistant", AFood),
    Category("2", "Alexa", "Amazon Personal Assistant", AAlexa),
    Category("3", "Books", "Amazon Books", ABooks),
    Category("4", "Devices", "Amazon Devices", ADevices),
    Category("5", "Appliances", "Amazon Appliances", AElectronics),
    Category("6", "Pharmacy", "Amazon Pharmacy", APharmacy),
    Category("7", "Furniture", "IKEA Furniture", AFurniture),
    Category("8", "Office", "Home Office", AWorkSpace),
  ];
}