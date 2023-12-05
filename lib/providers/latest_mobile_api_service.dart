import 'dart:convert';
import 'package:aboutmobiles/models/mobile.dart';
import 'package:aboutmobiles/widgets/api_call/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

int extractNumber(String priceString) {
  // Remove any non-numeric characters from the price string
  String numericString = priceString.replaceAll(RegExp(r'[^0-9]'), '');

  // Check if the resulting string is not empty before parsing
  if (numericString.isNotEmpty) {
    // Parse the numeric string to an integer and return it
    return int.parse(numericString);
  } else {
    // Return a default value or handle the case as needed
    return 0;
  }
}

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(
      'http://192.168.1.7:5100'); // Replace with your actual API base URL
});
String authToken =
    'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6ImU2NzA1YTI5LTFmNTAtNDQzOS05NzU4LTAwZDZhYWU2OTc2OCIsInN1YiI6IkZhaXphbiIsImVtYWlsIjoiRmFpemFuIiwianRpIjoiYzkzOTVlNTAtNTFhYy00ZTU0LTllYzctODNkZGI3YzMyMWI5IiwibmJmIjoxNjk3NTUyNDMwLCJleHAiOjE2OTc1NTk2MjksImlhdCI6MTY5NzU1MjQzMCwiaXNzIjoibW9iaWxlbWFuaWEiLCJhdWQiOiJtb2JpbGVtYW5pYSJ9.pLXSC1TYFLzr3UpFtXFaxmfNkrPDuavScPKQmkAQI3fYMPDq91zEFmArCny6f6_1Xu5uizt1XnHsDAuz2ICAyA';

final mobileData = FutureProvider<List<Mobile>>((ref) async {
  final apiService = ref.read(apiServiceProvider);

  final response = await http.get(
    Uri.parse('${apiService.baseUrl}/api/Dashboard/GetAllMobiles'),
    headers: {
      'Authorization': 'Bearer $authToken', // Make sure to replace $authToken
    },
  );

  if (response.statusCode == 200) {
    try {
      final Map<String, dynamic> responseData = json.decode(response.body);
      // Check if 'data' is a list
      if (responseData['data'] is List) {
        final List<dynamic> data = responseData['data'];
        final List<Mobile> loadedItems = [];

        for (final item in data) {
          // Check if 'item' is a non-null map
          if (item is Map<String, dynamic>) {
            loadedItems.add(
              Mobile(
                screenSize: item['screenSizeInInches'].toString() == 'null'
                    ? item['screenSizeInInches'].toString()
                    : 'Unknown',
                sim: item['sim'] == '' ? 'DualSim' : item['sim'] ?? 'Unknown',
                id: item['mobileId'] ?? 0,
                name: item['mobileName'] == '' ? 'Unknown' : item['mobileName'],
                price: item['mobilePrice']?.toDouble() ?? 12000.0,
                priceInDollars:
                    item['mobilePriceInDollors']?.toDouble() ?? 230.0,
                imagesSmall: List<String>.from(item['mobileImageS'] ?? []),
                imagesLarge: List<String>.from(item['mobileImageL'] ?? []),
                dimensions: item['dimensions'] ?? 'Unknown',
                cardSlot: item['cardSlot'] ?? 'Unknown',
                internalMemory: item['internalMemory'] ?? 'Unknown',
                gprs: item['gprs'] ?? 'Unknown',
                edge: item['edge'] ?? 'Unknown',
                bluetooth: item['bluetooth'] ?? 'Unknown',
                camera: item['camera'] ?? false,
                featuresOfCamera: item['featuresOfCamera'] ?? 'Unknown',
                cameraVideo: item['cameraVideo'] ?? 'Unknown',
                os: item['os'] ?? 'Unknown',
                cpu: item['cpu'] ?? 'Unknown',
                gpu: item['gpu'] ?? 'Unknown',
                weight: item['weight'] ?? 0,
                browser: item['browser'] ?? 'Unknown',
                gps: item['gps'] ?? 'Unknown',
                colors: item['colors'] ?? 'Unknown',
                batteryType: item['batteryType'] ?? 'Unknown',
                batteryStandby: item['batteryStandby'] ?? 'Unknown',
                torch: item['tourch'] ?? false,
                displayOrder: item['displayOrder'] ?? 0,
                displayAtHomePage: item['displayAtHomePage'] ?? false,
                isSmartPhone: item['isSmartPhone'] ?? false,
                isWindowsPhone: item['isWindowsPhone'] ?? false,
                isAndroidPhone: item['isAndroidPhone'] ?? false,
                isSymbianPhone: item['isSymbianPhone'] ?? false,
                whatsNew: item['whatsNew'],
                isLatest: item['isLatest'] ?? false,
                is3G: item['is3G'],
                is4G: item['is4G'],
                is5G: item['is5G'] ?? false,
                manufacturerName: item['manufacturerName'] ??
                    item['mobileName']?.toString().split(" ").first ??
                    'Unknown',
                batteryPower: extractNumber(item['batteryType']),
                imageUrl: 'assets/images/mobiles.png',
              ),
            );
          } else {
            print('Invalid data format in response');
          }
        }

        return loadedItems;
      } else {
        print('Invalid data format in response: "data" is not a list');
      }
    } catch (e) {
      print('Error decoding response: $e');
      throw Exception('Failed to load data');
    }
  } else {
    print('Failed to load data: ${response.statusCode}');
    throw Exception('Failed to load data');
  }
  return [];
});

final mobileList = Provider<List<Mobile>>((ref) {
  final futureProvider = ref.watch(mobileData); // Watch the FutureProvider
  List<Mobile> allMobileList = [];
  // Access the data from the FutureProvider or provide a default value
  futureProvider.maybeWhen(
    data: (data) {
      allMobileList = data;
      return allMobileList;
    },
    orElse: () =>
        [], // Default value when the FutureProvider is not in the "data" state
  );

  return allMobileList;
});
