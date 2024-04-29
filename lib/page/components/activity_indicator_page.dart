import 'package:flutter/cupertino.dart';

class ActivityIndicatorPage extends StatefulWidget {
  const ActivityIndicatorPage({super.key, required this.title});

  final String title;

  @override
  State<ActivityIndicatorPage> createState() => _ActivityIndicatorPageState();
}

class _ActivityIndicatorPageState extends State<ActivityIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: const SafeArea(
        child: Center(
          child: CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
