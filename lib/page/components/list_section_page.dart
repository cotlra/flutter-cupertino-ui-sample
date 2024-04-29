import 'package:flutter/cupertino.dart';

class ListSectionPage extends StatefulWidget {
  const ListSectionPage({super.key, required this.title});

  final String title;

  @override
  State<ListSectionPage> createState() => _ListSectionPageState();
}

class _ListSectionPageState extends State<ListSectionPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoListSection(
                header: const Text('ListSection'),
                children: List.generate(
                    5,
                    (index) => CupertinoListTile(
                          title: Text('Item$index'),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
