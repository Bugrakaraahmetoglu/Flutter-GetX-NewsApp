import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Model/NewsModel.dart';

class NewsController extends GetxController{
  
  RxList<NewsModel> trandingNewList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYoList = <NewsModel>[].obs;


void onInit() {
    super.onInit();
    getTrandingNews();
    getNewsForYou();
  }

Future<void> getTrandingNews() async {
   var baseURL = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=dbc4fadb07a34fc58bba15d9929b27b7";
  try {
    var response = await http.get(Uri.parse(baseURL));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      trandingNewList.value = (data['articles'] as List).map((e) => NewsModel.fromJson(e)).toList();
    } else {
      print("Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Error: $e");
  }
}


Future<void> getNewsForYou() async{
  var baseURL = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=dbc4fadb07a34fc58bba15d9929b27b7";
  try{
    var response = await http.get(Uri.parse(baseURL));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      newsForYoList.value = (data['articles'] as List).map((e) => NewsModel.fromJson(e)).toList();
    } else {
      print("Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Error: $e");
  }
}
}


