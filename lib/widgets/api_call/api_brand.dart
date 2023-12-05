import 'package:aboutmobiles/models/brands.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiBrand {
  Future<dynamic> loadItems() async {
    List<Brand> mobile;
    String? error;
    try {
      String authToken =
          'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6ImU2NzA1YTI5LTFmNTAtNDQzOS05NzU4LTAwZDZhYWU2OTc2OCIsInN1YiI6IkZhaXphbiIsImVtYWlsIjoiRmFpemFuIiwianRpIjoiYzkzOTVlNTAtNTFhYy00ZTU0LTllYzctODNkZGI3YzMyMWI5IiwibmJmIjoxNjk3NTUyNDMwLCJleHAiOjE2OTc1NTk2MjksImlhdCI6MTY5NzU1MjQzMCwiaXNzIjoibW9iaWxlbWFuaWEiLCJhdWQiOiJtb2JpbGVtYW5pYSJ9.pLXSC1TYFLzr3UpFtXFaxmfNkrPDuavScPKQmkAQI3fYMPDq91zEFmArCny6f6_1Xu5uizt1XnHsDAuz2ICAyA';

      final response = await http.get(
        Uri.parse('http://http://192.168.1.8:5100/Manufacturer'),
        headers: {
          'Authorization': 'Bearer $authToken',
        },
      );

      if (response.statusCode >= 400) {
        error = 'Sorry...Failed to fetch data. Please try again later.';
      }

      if (response.body == 'null') {
        error = 'Sorry...Failed to fetch data. Please try again later.';
        return;
      }

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
                loadedItems.add(Brand.api(
                    title: manufacturerName, id: manufacturerId.toString()));
              } else {
                error = 'Invalid data format in response';
              }
            }
          } else {
            // Handle other key-value pairs if needed
            // print('${element.key}: ${element.value}');
          }
        }
        mobile = loadedItems;
        return mobile;
      }
      // for (final item in listData.entries) {
      //   loadedItems.add(
      //     Brand.api(
      //         id: item.value['manufacturerId'],
      //         title: item.value['manufacturerName']),
      //   );
      // }
    } catch (error1) {
      error = error1.toString();
    }
  }
}
