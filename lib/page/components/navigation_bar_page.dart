import 'package:flutter/cupertino.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key, required this.title});

  final String title;

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: const SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
