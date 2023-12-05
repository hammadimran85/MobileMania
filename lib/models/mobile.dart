class Mobile {
  Mobile({
    required this.batteryPower,
    required this.manufacturerName,
    required this.id,
    required this.sim,
    required this.name,
    required this.price,
    required this.priceInDollars,
    required this.imagesSmall,
    required this.imagesLarge,
    required this.dimensions,
    required this.cardSlot,
    required this.internalMemory,
    required this.gprs,
    required this.edge,
    required this.bluetooth,
    required this.camera,
    required this.featuresOfCamera,
    required this.cameraVideo,
    required this.os,
    required this.cpu,
    required this.gpu,
    required this.browser,
    required this.gps,
    required this.colors,
    required this.batteryType,
    required this.batteryStandby,
    required this.torch,
    required this.displayOrder,
    required this.displayAtHomePage,
    required this.isSmartPhone,
    required this.isWindowsPhone,
    required this.isAndroidPhone,
    required this.isSymbianPhone,
    required this.whatsNew,
    required this.weight,
    required this.isLatest,
    required this.is3G,
    required this.is4G,
    required this.is5G,
    required this.imageUrl,
    required this.screenSize,
  });
  final String manufacturerName;
  final int id;
  final String name;
  final double price;
  final double priceInDollars;
  final List<String> imagesSmall;
  final List<String> imagesLarge;
  final String dimensions;
  final String cardSlot;
  final String internalMemory;
  final String gprs;
  final String edge;
  final String bluetooth;
  final bool camera;
  final String featuresOfCamera;
  final String cameraVideo;
  final String os;
  final String cpu;
  final String gpu;
  final String browser;
  final String gps;
  final String colors;
  final double weight;
  final String batteryType;
  final String batteryStandby;
  final bool torch;
  final int displayOrder;
  final bool displayAtHomePage;
  final bool isSmartPhone;
  final bool isWindowsPhone;
  final bool isAndroidPhone;
  final bool isSymbianPhone;
  final String? whatsNew;
  final bool isLatest;
  final bool? is3G;
  final bool? is4G;
  final bool is5G;
  final int batteryPower;
  final String sim;
  final String imageUrl;
  final String screenSize;
}
