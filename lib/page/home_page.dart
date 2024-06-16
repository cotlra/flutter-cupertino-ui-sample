import 'package:flutter/cupertino.dart';

import '../page_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.pageList});

  final PageList pageList;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino UI Sample'),
      ),
      child: SafeArea(
        child: ListView.builder(
          itemCount: widget.pageList.list.length,
          itemBuilder: (BuildContext context, int index) {
            var item = widget.pageList.list[index];
            return CupertinoListTile(
              title: Text(item.pageName),
              onTap: () {
                Navigator.of(context).pushNamed(item.pageRoute);
              },
            );
          },
        ),
      ),
    );
  }
}
