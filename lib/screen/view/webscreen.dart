import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/allprovider.dart';

class web_screen extends StatefulWidget {
  const web_screen({Key? key}) : super(key: key);

  @override
  State<web_screen> createState() => _web_screenState();
}

class _web_screenState extends State<web_screen> {
  all_in_one_provider? trueprovider;
  all_in_one_provider? falseprovider;
  @override
  Widget build(BuildContext context) {

    trueprovider = Provider.of<all_in_one_provider>(context, listen: true);
    falseprovider = Provider.of<all_in_one_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller:trueprovider!.webViewController!
        ),
      ),
    );
  }
}
