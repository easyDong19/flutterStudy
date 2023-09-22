import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final uri = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(uri);
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(uri);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              controller.goBack();
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          IconButton(
            onPressed: () {
              controller.goForward();
            },
            icon: Icon(
              Icons.arrow_forward,
            ),
          )
        ],
      ),
      body: WebViewWidget(
        // onWebViewCreated: (WebViewController controller) {
        //   this.controller = controller;
        // },
        // initialUrl: 'https://blog.codefactory.ai',
        // javascriptMode: JavaScriptMode.unrestricted,
        controller: controller,
      ),
    );
  }
}
