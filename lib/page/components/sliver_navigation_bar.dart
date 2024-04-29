import 'package:flutter/cupertino.dart';

class SliverNavigationBarPage extends StatefulWidget {
  const SliverNavigationBarPage({super.key, required this.title});

  final String title;

  @override
  State<SliverNavigationBarPage> createState() =>
      _SliverNavigationBarPageState();
}

class _SliverNavigationBarPageState extends State<SliverNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                largeTitle: Text(widget.title),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return CupertinoListTile(
                      title: Text('Item$index'),
                    );
                  },
                  childCount: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
