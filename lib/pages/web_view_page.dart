import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 57, 104),
        title: 
      const Text("WebView",
      style: TextStyle(
      fontSize: 25 ,fontWeight: FontWeight.bold),
     ), centerTitle: true,
    ),
    body: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://amazon.com',
      onWebViewCreated: (controller) {
        this.controller = controller;
      },
      onPageStarted: (Url) {
        print("New Website: $Url");
      },
    ),floatingActionButton: FloatingActionButton(
      onPressed: () async {
        controller.loadUrl('https://github.com/Abdulhaseebimran');
      },
      child: const Icon(Icons.import_export_outlined, size: 24,),
      ),
    );
  }
}