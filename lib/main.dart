import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

final Uri _url = Uri.parse('https://www.youtube.com/');

void main() => runApp(const TestStatefulWidget());

class TestStatefulWidget extends StatefulWidget {
  const TestStatefulWidget({Key? key}) : super(key: key);

  @override
  _TestStatefulWidgetState createState() => _TestStatefulWidgetState();
}

class _TestStatefulWidgetState extends State<TestStatefulWidget> {
  @override
  void initState() {
    _launchUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
    SystemNavigator.pop();
  }
}
