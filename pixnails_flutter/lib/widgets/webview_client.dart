import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pixnails_flutter/client_manager.dart';
import 'package:pixnails_flutter/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewClient extends StatefulWidget {
  final ClientManager manager;

  const WebviewClient({Key? key, required ClientManager manager})
      : manager = manager,
        super(key: key);

  @override
  State<WebviewClient> createState() => _WebviewClientState();
}

class _WebviewClientState extends State<WebviewClient> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  void _onPageStarted(String url) {
    if(url == twitchHome ||
    url == "$twitchHome/" ||
    url.startsWith("$twitchHome/?")) {
      widget.manager.webviewController.loadUrl(widget.ch)
    }
  }

  void _onWebViewCreated(WebViewController controller) {
    widget.manager.webviewController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: twitchLogin,
      javascriptMode: JavascriptMode.unrestricted,
      debuggingEnabled: false,
      onPageStarted: _onPageStarted,
      onWebViewCreated: _onWebViewCreated,
      userAgent: userAgent,
    );
  }
}
