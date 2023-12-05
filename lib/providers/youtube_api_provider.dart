// youtube_provider.dart
import 'dart:convert';
import 'package:aboutmobiles/models/video_reviews.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final youtubeDataProvider = FutureProvider<List<VideoReviews>>((ref) async {
  const apiKey = 'AIzaSyCfIqliEhQUVbePEkbaeqnZ9Y8jJieyaL8';
  const searchQuery =
      'samsung, qmobile, nokia, htc mobile phone review'; // You can modify this query as needed
  const maxResults = 20;
  const apiUrl =
      'https://www.googleapis.com/youtube/v3/search?key=$apiKey&q=$searchQuery&type=video&part=snippet&maxResults=$maxResults';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> items = data['items'];

    final List<VideoReviews> videoReviewsList = items.map((item) {
      final snippet = item['snippet'];
      final id = item['id']['videoId'];
      final title = snippet['title'];
      final thumbnailUrl = snippet['thumbnails']['medium']['url'];
      final videoUrl = 'https://www.youtube.com/watch?v=$id';
      final channelTitle = snippet['channelTitle'];

      return VideoReviews(
        id: id,
        title: title,
        videoUrl: videoUrl,
        thumbnailUrl: thumbnailUrl,
        channelTitle: channelTitle,
      );
    }).toList();

    return videoReviewsList;
  } else {
    throw StateError('Failed to fetch data: ${response.reasonPhrase}');
  }
});
