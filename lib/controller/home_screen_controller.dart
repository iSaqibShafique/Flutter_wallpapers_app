import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:wall_lab/api/pexel_api.dart';
import 'package:http/http.dart' as http;

class HomeScreenController extends GetxController {
  @override
  void onInit() {
    forYou();
    depthEffect();
    waterFall();
    calmm();
    game();
    neons();
    universes();
    snows();
    colors();
    tophundred();
    movements();
    flower();
    arts();
    earth();
    skyscrapper();
    car();
    sports();
    lightEmitting();
    abstract();
    tasty();
    liquids();
    funs();
    rains();
    fume();
    gradient();
    learning();
    super.onInit();
  }

  // ignore: non_constant_identifier_names
  RxInt current_index = 0.obs;
  List foryou = [].obs;
  List deptheffect = [].obs;
  List waterfall = [].obs;
  List calm = [].obs;
  List games = [].obs;
  List neon = [].obs;
  List universe = [].obs;
  List snow = [].obs;
  List color = [].obs;
  List top100 = [].obs;
  List movement = [].obs;
  List flowers = [].obs;
  List art = [].obs;
  List earths = [].obs;
  List skyscrappers = [].obs;
  List cars = [].obs;
  List sport = [].obs;
  List lightemitting = [].obs;
  List abstracts = [].obs;
  List tastys = [].obs;
  List liquid = [].obs;
  List fun = [].obs;
  List rain = [].obs;
  List fumes = [].obs;
  List gradients = [].obs;
  List learnings = [].obs;

  // Bool values of the list of the response
  RxBool isAllLoadeded = false.obs;

  void updateIndex(int value) {
    current_index = RxInt(value);
    update();
  }

  forYou() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=islam&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      foryou = result['photos'];
      update();
    });
  }

  depthEffect() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=depth effect&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      deptheffect = result['photos'];
      update();
    });
  }

  waterFall() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=waterfall&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      waterfall = result['photos'];
      update();
    });
  }

  calmm() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=calm&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      calm = result['photos'];
      update();
    });
  }

  game() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=gaming&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      games = result['photos'];
      update();
    });
  }

  neons() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=neon&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      neon = result['photos'];
      update();
    });
  }

  universes() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=universe&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      universe = result['photos'];
      update();
    });
  }

  snows() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=snow&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      snow = result['photos'];
      update();
    });
  }

  colors() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=colors&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      color = result['photos'];
      update();
    });
  }

  tophundred() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=top 100&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      top100 = result['photos'];
      update();
    });
  }

  movements() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=movement&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      movement = result['photos'];
      update();
    });
  }

  flower() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=flowers&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      flowers = result['photos'];
      update();
    });
  }

  arts() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=arts&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      art = result['photos'];
      update();
    });
  }

  earth() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=earth&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      earths = result['photos'];
      update();
    });
  }

  skyscrapper() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=Skyscrappers&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      skyscrappers = result['photos'];
      update();
    });
  }

  car() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=cars&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      cars = result['photos'];
      update();
    });
  }

  sports() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=sports&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      sport = result['photos'];
      update();
    });
  }

  lightEmitting() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=light emitting&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      lightemitting = result['photos'];
      update();
    });
  }

  abstract() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=abstract&per_page=20'),
        headers: {
          'Authorization': pexel_api,
        }).then((value) {
      Map result = jsonDecode(value.body);
      abstracts = result['photos'];
      update();
    });
  }

  tasty() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=food&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      tastys = result['photos'];
      update();
    });
  }

  liquids() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=liquids&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      liquid = result['photos'];
      update();
    });
  }

  funs() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=fun&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      fun = result['photos'];
      update();
    });
  }

  rains() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=rain&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      rain = result['photos'];
      update();
    });
  }

  fume() async {
    await http.get(
        Uri.parse('https://api.pexels.com/v1/search?query=fumes&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      fumes = result['photos'];
      update();
    });
  }

  gradient() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=gradient&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      gradients = result['photos'];
      update();
    });
  }

  learning() async {
    await http.get(
        Uri.parse(
            'https://api.pexels.com/v1/search?query=learning&per_page=20'),
        headers: {'Authorization': pexel_api}).then((value) {
      Map result = jsonDecode(value.body);
      learnings = result['photos'];
      update();
    });
  }
}
//  "https://api.pexels.com/v1/search?query=people"