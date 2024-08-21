import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewScreen extends StatefulWidget {
  final String newsUrl;

  DetailViewScreen({super.key, required this.newsUrl});

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();

    // Check and replace "http:" with "https:" if necessary
    String url = widget.newsUrl;
    if (url.startsWith("http:")) {
      url = url.replaceFirst("http:", "https:");
    }

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
