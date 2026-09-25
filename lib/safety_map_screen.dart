import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SafetyMapScreen extends StatefulWidget {
  const SafetyMapScreen({super.key});

  @override
 State<SafetyMapScreen> createState() => _SafetyMapScreenState();
}

class _SafetyMapScreenState extends State<SafetyMapScreen> {

  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(
          "https://www.google.com/maps/d/viewer?mid=1vQq2tnStZ8jeTrgww6GdQK-I7JxDphg&usp=sharing",
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Safety Map"),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}