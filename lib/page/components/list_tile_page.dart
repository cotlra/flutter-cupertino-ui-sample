import 'package:flutter/cupertino.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key, required this.title});

  final String title;

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return CupertinoListTile(
              title: Text('List Tile Title $index'),
              subtitle: const Text('Subtitle'),
              leading: const Icon(CupertinoIcons.person_alt_circle),
              trailing: const Icon(CupertinoIcons.star),
            );
          },
        ),
      ),
    );
  }
}
