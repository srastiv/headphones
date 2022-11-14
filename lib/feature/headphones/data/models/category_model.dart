class CategoryModel {
  String svgPath;
  String categoryName;
  String productName;
  String productDescription;
  String imagePath;
  double price;
  bool isSelectedOrNot;
  CategoryModel({
    required this.categoryName,
    required this.svgPath,
    required this.imagePath,
    required this.isSelectedOrNot,
    required this.productDescription,
    required this.productName,
    required this.price,
  });
}

List<CategoryModel> categoryList = [
  CategoryModel(
    categoryName: "Headphones",
    svgPath: "assets/icons/headphone.svg",
    imagePath: "assets/images/slighlyRotated.png",
    productName: "Bose QC-700",
    productDescription:
        "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone",
    isSelectedOrNot: false,
    price: 337.5,
  ),
  CategoryModel(
    categoryName: "Mobile",
    svgPath: "assets/icons/mobile.svg",
    imagePath: "assets/images/bigside.png",
    productName: "Bose QC-600",
    productDescription:
        "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone",
    isSelectedOrNot: false,
    price: 374.5,
  ),
  CategoryModel(
    categoryName: "Mouse",
    svgPath: "assets/icons/mouse.svg",
    imagePath: "assets/images/front.png",
    productName: "Bose QC-500",
    productDescription:
        "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone",
    isSelectedOrNot: false,
    price: 520,
  ),
  CategoryModel(
    categoryName: "Mouse",
    svgPath: "assets/icons/mouse.svg",
    imagePath: "assets/images/front.png",
    productName: "Bose QC-500",
    productDescription:
        "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone",
    isSelectedOrNot: false,
    price: 520,
  ),
  CategoryModel(
    categoryName: "Mouse",
    svgPath: "assets/icons/mouse.svg",
    imagePath: "assets/images/front.png",
    productName: "Bose QC-500",
    productDescription:
        "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone",
    isSelectedOrNot: false,
    price: 520,
  ),
];
