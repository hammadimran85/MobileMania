import 'dart:convert';

import 'package:aboutmobiles/models/brands.dart';
import 'package:aboutmobiles/widgets/api_call/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(
      'http://192.168.1.7:5100'); // Replace with your actual API base URL
});
String authToken =
    'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6ImU2NzA1YTI5LTFmNTAtNDQzOS05NzU4LTAwZDZhYWU2OTc2OCIsInN1YiI6IkZhaXphbiIsImVtYWlsIjoiRmFpemFuIiwianRpIjoiYzkzOTVlNTAtNTFhYy00ZTU0LTllYzctODNkZGI3YzMyMWI5IiwibmJmIjoxNjk3NTUyNDMwLCJleHAiOjE2OTc1NTk2MjksImlhdCI6MTY5NzU1MjQzMCwiaXNzIjoibW9iaWxlbWFuaWEiLCJhdWQiOiJtb2JpbGVtYW5pYSJ9.pLXSC1TYFLzr3UpFtXFaxmfNkrPDuavScPKQmkAQI3fYMPDq91zEFmArCny6f6_1Xu5uizt1XnHsDAuz2ICAyA';

final brandData = FutureProvider<List<Brand>>((ref) async {
  final apiService = ref.read(apiServiceProvider);

  final response = await http.get(
    Uri.parse('${apiService.baseUrl}/Manufacturer'),
    headers: {
      'Authorization': 'Bearer $authToken', // Make sure to replace $authToken
    },
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<Brand> loadedItems = [];

    for (var element in listData.entries) {
      if (element.key == 'data') {
        List<dynamic> data = element.value;
        for (final item in data) {
          if (item['manufacturerId'] is int &&
              item['manufacturerName'] is String) {
            int manufacturerId = item['manufacturerId'];
            String manufacturerName = item['manufacturerName'];
            loadedItems.add(
              Brand.api(
                title: manufacturerName,
                id: manufacturerId.toString(),
              ),
            );
          } else {
            print('Invalid data format in response');
          }
        }
      } else {
        // Handle other key-value pairs if needed
      }
    }

    return loadedItems;
  } else {
    throw Exception('Failed to load data');
  }
});
