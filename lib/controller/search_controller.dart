import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wall_lab/api/pexel_api.dart';

class SearchScreenController extends GetxController {
  List searchedList = [].obs;
  RxBool searchLoaded = false.obs;
  flower(String value) async {
    Timer(const Duration(seconds: 3), () {
      http.get(
          Uri.parse(
              'https://api.pexels.com/v1/search?query=$value&per_page=20'),
          headers: {'Authorization': pexel_api}).then((value) {
        Map result = jsonDecode(value.body);
        searchedList = result['photos'];
        update();
        print(searchedList.length);
        searchLoaded = RxBool(true);
        update();
        searchLoaded = RxBool(false);
        update();
      });
    });
  }
}
