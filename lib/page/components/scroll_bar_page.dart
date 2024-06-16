import 'package:flutter/cupertino.dart';

class ScrollBarPage extends StatefulWidget {
  const ScrollBarPage({super.key, required this.title});

  final String title;

  @override
  State<ScrollBarPage> createState() => _ScrollBarPageState();
}

class _ScrollBarPageState extends State<ScrollBarPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: CupertinoScrollbar(
          thumbVisibility: true,
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return CupertinoListTile(title: Text('Item $index'));
            },
          ),
        ),
      ),
    );
  }
}
