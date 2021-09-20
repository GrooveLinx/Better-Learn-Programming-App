import 'dart:async';

import 'package:code_quiz_v2/config/error-page.dart';
import 'package:code_quiz_v2/screen/pages/online%20book/online-books-page.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class InternetConnectivity extends StatefulWidget {
  InternetConnectivity({Key key}) : super(key: key);

  @override
  _InternetConnectivityState createState() => _InternetConnectivityState();
}

class _InternetConnectivityState extends State<InternetConnectivity> {
  bool isConnected = false;
  StreamSubscription sub;

  @override
  void initState() {
    super.initState();
    sub = Connectivity().onConnectivityChanged.listen(
      (event) {
        setState(
          () {
            isConnected = (event != ConnectivityResult.none);
          },
        );
      },
    );
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isConnected ? OnlineBookPage() : ErrorPage();
  }
}
