import 'package:dio/dio.dart';
import 'package:news_app/models/news_item_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NeswServices {
  static const String _baseUrl = 'https://newsapi.org/v2';
  static const String _apiKey = 'f0a8ee26338a41e79b4ba1ff104aab10';
  static final _dio = Dio();
  static Future<List<NewsItemModel>> fetchRecomendedNews() async {
    Response response;
    response =
        await _dio.get('$_baseUrl/top-headlines?language=en&apiKey=$_apiKey');
    List<NewsItemModel> recomendedNewsList = parseRecomendedNews(response);
    return recomendedNewsList;
  }

  static List<NewsItemModel> parseRecomendedNews(dynamic response) {
    List<NewsItemModel> recomendedNewsList = [];
    var responseDataList = response.data['articles'];
    for (var element in responseDataList) {
      recomendedNewsList.add(NewsItemModel.recomendedNews(element));
    }
    return recomendedNewsList;
  }

  static Future<List<NewsItemModel>> featchCategorizedNews(
      {required String category}) async {
    Response response;
    response = await _dio.get(
        '$_baseUrl/top-headlines/sources?category=$category&language=en&apiKey=$_apiKey');
    List<NewsItemModel> categorizedNewsItemsList =
        parseCategorizedNews(response);
    return categorizedNewsItemsList;
  }

  static List<NewsItemModel> parseCategorizedNews(Response<dynamic> response) {
    List<NewsItemModel> categorizedNewsItemsList = [];
    var responsDataList = response.data['sources'];
    for (var element in responsDataList) {
      categorizedNewsItemsList.add(
        NewsItemModel.categorizedNews(element),
      );
    }
    return categorizedNewsItemsList;
  }

  static Future<void> launchNewsUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      throw Exception('Could not launch $url');
    }
  }
}
