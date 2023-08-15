class LatestMobiles {
  LatestMobiles({
    required this.id,
    required this.model,
    required this.company,
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
    required this.os,
    required this.imageUrl,
  });
  final String id;
  final String imageUrl;
  final String model;
  final String company;
  final String price;
  final double rating;
  final double screenSize;
  final int rearCameraPixels;
  final int frontCameraPixels;
  final int ram;
  final int memory;
  final String processor;
  final double weight;
  final int batteryPower;
  final String os;
}
