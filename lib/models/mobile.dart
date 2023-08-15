class Mobile {
  Mobile(
      {required this.feature,
      required this.brandImageUrl,
      required this.id,
      required this.imageUrl,
      required this.category,
      required this.model,
      required this.brand,
      required this.price,
      required this.rating,
      required this.screenSize,
      required this.rearCameraPixels,
      required this.frontCameraPixels,
      required this.ram,
      required this.memory,
      required this.processor,
      required this.weight,
      required this.batteryPower,
      required this.os});
  final String id;
  final String imageUrl;
  final String category;
  final String model;
  final String brand;
  final String brandImageUrl;
  final String price;
  final double rating;
  final double screenSize;
  final int rearCameraPixels;
  final int frontCameraPixels;
  final int ram;
  final int memory;
  final String feature;
  final String processor;
  final double weight;
  final int batteryPower;
  final String os;
}
