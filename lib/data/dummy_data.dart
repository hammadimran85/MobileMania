import 'package:aboutmobiles/models/brands.dart';
import 'package:aboutmobiles/models/features.dart';
import 'package:aboutmobiles/models/latest_mobiles.dart';
import 'package:aboutmobiles/models/latest_news.dart';
import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/models/price_category.dart';
import 'package:aboutmobiles/models/user_opinion_model.dart';
// import 'package:aboutmobiles/models/video_reviews.dart';
// import 'package:aboutmobiles/widgets/api_call/api_brand.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final dummyLatestMobiles = [
  LatestMobiles(
    id: '1',
    model: 'A51',
    company: 'Samsung',
    price: '48,900',
    rating: 3.5,
    screenSize: 6.8,
    rearCameraPixels: 64,
    frontCameraPixels: 20,
    ram: 16,
    memory: 128,
    processor: '2.4Ghz Octa Core',
    weight: 0,
    batteryPower: 5000,
    os: 'Android 13 OS',
    imageUrl: 'assets/images/mobiles.png',
  ),
  LatestMobiles(
    id: '2',
    model: 'A51',
    company: 'Samsung',
    price: '48,900',
    rating: 3.5,
    screenSize: 6.8,
    rearCameraPixels: 64,
    frontCameraPixels: 20,
    ram: 16,
    memory: 128,
    processor: '2.4Ghz Octa Core',
    weight: 18,
    batteryPower: 5000,
    os: 'Android 13 OS',
    imageUrl: 'assets/images/mobiles.png',
  ),
  LatestMobiles(
    id: '3',
    model: 'A51',
    company: 'Samsung',
    price: '48,900',
    rating: 3.5,
    screenSize: 6.8,
    rearCameraPixels: 64,
    frontCameraPixels: 20,
    ram: 16,
    memory: 128,
    processor: '2.4Ghz Octa Core',
    weight: 18,
    batteryPower: 5000,
    os: 'Android 13 OS',
    imageUrl: 'assets/images/mobiles.png',
  ),
  LatestMobiles(
    id: '4',
    model: 'A51',
    company: 'Samsung',
    price: '48,900',
    rating: 3.5,
    screenSize: 6.8,
    rearCameraPixels: 64,
    frontCameraPixels: 20,
    ram: 16,
    memory: 128,
    processor: '2.4Ghz Octa Core',
    weight: 18,
    batteryPower: 5000,
    os: 'Android 13 OS',
    imageUrl: 'assets/images/mobiles.png',
  ),
  LatestMobiles(
    id: '5',
    model: 'A51',
    company: 'Samsung',
    price: '48,900',
    rating: 3.5,
    screenSize: 6.8,
    rearCameraPixels: 64,
    frontCameraPixels: 20,
    ram: 16,
    memory: 128,
    processor: '2.4Ghz Octa Core',
    weight: 18,
    batteryPower: 5000,
    os: 'Android 13 OS',
    imageUrl: 'assets/images/mobiles.png',
  ),
];

// var obj = ApiBrand();
// List<Brand> dummyBrands = [];

// Future<void> load() async {
//   List<dynamic> mobile = await obj.loadItems();

//   for (int i = 0; i < mobile.length; i++) {
//     dummyBrands.add(Brand(
//         bgImageUrl: 'assets/images/brandBg.jpg',
//         imageUrl: 'assets/images/qmobile.png',
//         title: mobile[i].manufacturerName.toString(),
//         id: mobile[i].manufacturerId.toString()));
//   }
// }

// void main(List<String> args) {
//   load();
//   print(dummyBrands);
// }

final dummyBrands = [
  Brand(
    imageUrl: 'assets/images/qmobile.png',
    title: 'QMobile',
    id: '2',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Samsung',
    id: '11',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Nokia',
    id: '12',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'G Five',
    id: '13',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Apple Iphone',
    id: '14',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'HTC Mobile',
    id: '15',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Sony',
    id: '16',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Voice Mobile',
    id: '17',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Megagate',
    id: '18',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Sony Ericsson',
    id: '19',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Huawei Mobile',
    id: '20',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Blackberry',
    id: '21',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Motorola Mobile',
    id: '22',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'LG Mobile',
    id: '23',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
  Brand(
    imageUrl: 'assets/images/logo.png',
    title: 'Haier Mobile',
    id: '24',
    bgImageUrl: 'assets/images/brandBg.jpg',
  ),
];

final dummyFeatures = [
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.android,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
      fill: 0.1,
    ),
    title: 'Android',
    id: '1',
  ),
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.apple,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'IOS',
    id: '2',
  ),
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.simCard,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Dual Sim',
    id: '3',
  ),
  Features(
    imageUrl: Icon(
      Icons.network_cell_rounded,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: '3G',
    id: '4',
  ),
  Features(
    imageUrl: Icon(
      Icons.network_cell_rounded,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: '4G',
    id: '5',
  ),
  Features(
    imageUrl: Icon(
      Icons.network_cell_rounded,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: '5G',
    id: '6',
  ),
  Features(
    imageUrl: Icon(
      Icons.memory,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Ram',
    id: '7',
  ),
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.mobileScreen,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Screen Size',
    id: '8',
  ),
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.camera,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Camera',
    id: '8',
  ),
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.fingerprint,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Finger Print',
    id: '8',
  ),
  Features(
    imageUrl: Icon(
      Icons.memory_rounded,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Processor',
    id: '8',
  ),
  Features(
    imageUrl: Icon(
      FontAwesomeIcons.batteryFull,
      size: 45,
      color: const Color.fromARGB(255, 60, 108, 220).withOpacity(0.7),
    ),
    title: 'Battery',
    id: '8',
  ),
];

final dummyPrice = [
  Price(
    id: '1',
    startingPrice: 0,
    endingPrice: 5000,
  ),
  Price(
    id: '2',
    startingPrice: 5000,
    endingPrice: 10000,
  ),
  Price(
    id: '3',
    startingPrice: 10000,
    endingPrice: 15000,
  ),
  Price(
    id: '4',
    startingPrice: 15000,
    endingPrice: 20000,
  ),
  Price(
    id: '5',
    startingPrice: 20000,
    endingPrice: 25000,
  ),
  Price(
    id: '6',
    startingPrice: 25000,
    endingPrice: 30000,
  ),
  Price(
    id: '7',
    startingPrice: 30000,
    endingPrice: 35000,
  ),
  Price(
    id: '8',
    startingPrice: 35000,
    endingPrice: 40000,
  ),
  Price(
    id: '9',
    startingPrice: 40000,
    endingPrice: 50000,
  ),
  Price(
    id: '10',
    startingPrice: 50000,
    endingPrice: 60000,
  ),
  Price(
    id: '11',
    startingPrice: 60000,
    endingPrice: 70000,
  ),
  Price(
    id: '12',
    startingPrice: 80000,
    endingPrice: 99000,
  ),
];
final DateTime min = DateTime.now();
// final dummyVideoReviews = [
//   VideoReviews(
//     id: '1',
//     title: 'Unboxing | Price & All Details',
//     videoUrl: '& All Details',
//     thumbnailUrl: 'assets/images/thumbnail.jpg',
//     phoneName: 'Samsung A51',
//     minutes:
//         '${min.minute.toString().padLeft(2, '0')}:${min.second.toString().padLeft(2, '0').toString().padLeft(2, '0')}',
//   ),
//   VideoReviews(
//     id: '1',
//     title: 'Unboxing | Price & All Details',
//     videoUrl: '& All Details',
//     thumbnailUrl: 'assets/images/thumbnail.jpg',
//     phoneName: 'Samsung A51',
//     minutes:
//         '${min.minute.toString().padLeft(2, '0')}:${min.second.toString().padLeft(2, '0')}',
//   ),
//   VideoReviews(
//     id: '1',
//     title: 'Unboxing | Price & All Details',
//     videoUrl: '& All Details',
//     thumbnailUrl: 'assets/images/thumbnail.jpg',
//     phoneName: 'Samsung A51',
//     minutes:
//         '${min.minute.toString().padLeft(2, '0')}:${min.second.toString().padLeft(2, '0')}',
//   ),
//   VideoReviews(
//     id: '1',
//     title: 'Unboxing | Price & All Details',
//     videoUrl: '& All Details',
//     thumbnailUrl: 'assets/images/thumbnail.jpg',
//     phoneName: 'Samsung A51',
//     minutes:
//         '${min.minute.toString().padLeft(2, '0')}:${min.second.toString().padLeft(2, '0')}',
//   ),
//   VideoReviews(
//     id: '1',
//     title: 'Unboxing | Price & All Details',
//     videoUrl: '& All Details',
//     thumbnailUrl: 'assets/images/thumbnail.jpg',
//     phoneName: 'Samsung A51',
//     minutes:
//         '${min.minute.toString().padLeft(2, '0')}:${min.second.toString().padLeft(2, '0')}',
//   ),
//   VideoReviews(
//     id: '1',
//     title: 'Unboxing | Price & All Details',
//     videoUrl: '& All Details',
//     thumbnailUrl: 'assets/images/thumbnail.jpg',
//     phoneName: 'Samsung A51',
//     minutes:
//         '${min.minute.toString().padLeft(2, '0')}:${min.second.toString().padLeft(2, '0')}',
//   ),
// ];
final DateTime date = DateTime.now();
final dummyOpinions = [
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
  UserOpinionModel(
    name: 'Hammad Imran',
    message:
        'Due to restrictions set up by Facebook this plugin isn\'t capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK  or search for other Flutter plugins implementing this SDK. More information can be found in this issue.',
    date: date,
    id: '1',
  ),
];

final dummyMobiles = [
  Mobile(
    screenSize: '19',
    batteryPower: 3000,
    manufacturerName: 'Samsung',
    id: 1,
    sim: 'Dual SIM',
    name: 'Galaxy S21',
    price: 899,
    priceInDollars: 999,
    imagesSmall: ['image1_small.jpg', 'image2_small.jpg'],
    imagesLarge: ['image1_large.jpg', 'image2_large.jpg'],
    dimensions: '150 x 75 x 8 mm',
    cardSlot: 'microSD, up to 1TB',
    internalMemory: '128GB',
    gprs: 'Yes',
    weight: 19,
    edge: 'Yes',
    bluetooth: 'Bluetooth 5.0',
    camera: true,
    featuresOfCamera: 'Triple 12 MP, 64 MP, 12 MP',
    cameraVideo:
        '4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR, stereo sound rec.',
    os: 'Android 11, One UI 3.1',
    cpu:
        'Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz Cortex-A78 & 4x2.2 GHz Cortex-A55)',
    gpu: 'Mali-G78 MP14',
    browser: 'HTML5',
    gps: 'Yes, with A-GPS, GLONASS, BDS, GALILEO',
    colors: 'Phantom Gray, Phantom White, Phantom Violet, Phantom Pink',
    batteryType: 'Li-Ion 4000 mAh, non-removable',
    batteryStandby: 'Up to 400 hours (3G)',
    torch: true,
    displayOrder: 1,
    displayAtHomePage: true,
    isSmartPhone: true,
    isWindowsPhone: false,
    isAndroidPhone: true,
    isSymbianPhone: false,
    whatsNew: 'Improved performance and camera features',
    isLatest: true,
    is3G: false,
    is4G: true,
    is5G: true,
    imageUrl: 'assets/images/mobiles.png',
  )
];

final dummyLatestNews = [
  LatestNews(
      id: '1',
      imageUrl: 'assets/images/1.jpg',
      message:
          'iPhone 15 Release Could Be Delayed Until October, Pro Models May Have Fewer Units Available at Launch'),
  LatestNews(
      id: '2',
      imageUrl: 'assets/images/2.jpg',
      message:
          'Prime Minister Shahbaz Sharif on Tuesday inaugurated the Online Temporary Mobile Phone Registration System to facilitate overseas Pakistanis'),
  LatestNews(
      id: '3',
      imageUrl: 'assets/images/3.jpg',
      message:
          'The head of Samsung\'s Mobile eXperience unit discusses keys to designing the Galaxy Z Fold 5 and Galaxy Z Flip 5.'),
  LatestNews(
      id: '4',
      imageUrl: 'assets/images/4.jpg',
      message:
          'The Google Pixel 8 and Pixel 8 Pro are on their way. Google\'s fallen into a pretty reliable release pattern for Pixel phones.'),
  LatestNews(
      id: '5',
      imageUrl: 'assets/images/5.jpg',
      message:
          'Visitors will be offered epic experiences with the new Samsung Galaxy \$23 series and its ecosystem of connected products and services.'),
];

final Map<int, String> androidVersions = {
  0: 'All',
  1: 'Android 14',
  2: 'Android 13',
  3: 'Android 12',
  4: 'Android 11',
  5: 'Android 10',
  6: 'Pie',
  7: 'Oreo',
  8: 'Nougat',
  9: 'Marshmallow',
  10: 'Android One',
  // Add more versions as needed
};

final Map<int, String> ramTypes = {
  0: 'All',
  1: '512MB',
  2: '2GB',
  3: '3GB',
  4: '4GB',
  5: '6GB',
  6: '8GB',
  7: '12GB & Above',
  // Add more versions as needed
};

final Map<int, String> screenTypes = {
  0: 'All',
  1: 'Less than 3 inch',
  2: '3.0 Inch - 4.1 Inch',
  3: '4.1 Inch - 4.9 Inch',
  4: '5.0 Inch - 6.9 Inch',
  5: '7.0 Inch - 8.9 Inch',
  // Add more versions as needed
};

final Map<int, String> processorTypes = {
  0: 'All',
  1: 'Single Core',
  2: 'Dual Core',
  3: 'Qaud Core',
  4: 'Hexa Core',
  5: 'Octa Core',
  // Add more versions as needed
};

final Map<int, String> cameraTypes = {
  0: 'All',
  1: '1 MP',
  2: '2 MP',
  3: '3 MP',
  4: '4 MP',
  5: '5 MP',
  6: '6 MP',
  7: '7 MP',
  8: '8 MP',
  9: '9 MP',
  10: '10 MP',
  11: '11 MP',
  12: '12 MP',
  13: '13 MP',
  14: '14 MP',
  15: '15 MP',
  16: '16 MP',
  17: '17 MP',
  18: '18 MP',
  19: '19 MP',
  20: '20 MP',
  21: '21 MP',
  22: '23 MP',
  23: '24 MP',
  24: '25 MP',
  25: '27 MP',
  26: '32 MP',
  27: '40 MP',
  28: '41 MP',
  29: '48 MP',
  30: '50 MP',
  31: '52 MP',
  32: '54 MP',
  33: '64 MP',
  34: '100 MP',
  35: '108 MP',
  36: '200 MP',
  // Add more versions as needed
};
