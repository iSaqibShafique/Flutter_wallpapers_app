import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wall_lab/screens/home_screen.dart';
import 'package:wall_lab/screens/no_internet_screen.dart';

class InternetCheckController extends GetxController {
  int connectionType = 0;

  final Connectivity _connectivity = Connectivity();

  late StreamSubscription _streamSubscription;
  @override
  void onInit() {
    super.onInit();
    getConnectionType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateState);
  }

  // a method to get which connection result, if you we connected to internet or no if yes then which network
  Future<void> getConnectionType() async {
    var connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      print(e);
    }
    return _updateState(connectivityResult);
  }

  // state update, of network, if you are connected to WIFI connectionType will get set to 1,
  // and update the state to the consumer of that variable.
  _updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = 1;
        update();
        Timer(const Duration(seconds: 2),
            () => Get.offAll(() => const HomeScreen()));
        break;
      case ConnectivityResult.mobile:
        connectionType = 2;
        update();
        Timer(const Duration(seconds: 2),
            () => Get.offAll(() => const HomeScreen()));
        break;
      case ConnectivityResult.none:
        connectionType = 0;
        update();
        Timer(const Duration(seconds: 2),
            () => Get.offAll(() => const NoInternetScreen()));
        break;
      default:
        Get.snackbar('Network Error', 'Failed to get Network Status');
        break;
    }
  }

  @override
  void onClose() {
    //stop listening to network state when app is closed
    _streamSubscription.cancel();
  }
}
