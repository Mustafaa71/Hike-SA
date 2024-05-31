import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse('https://istitlaa.ncc.gov.sa/ar/Tourism/MT/PrivateAccommodation/Pages/default.aspx'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms & Conditions',
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
