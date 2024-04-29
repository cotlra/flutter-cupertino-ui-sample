import 'package:flutter/cupertino.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key, required this.title});
  final String title;

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  var _selectedIndex = 0;
  final _contentList = const [
    Center(
      child: Text('ホーム画面'),
    ),
    Center(
      child: Text('検索画面'),
    ),
    Center(
      child: Text('設定'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(widget.title),
              ),
              child: Center(
                child: _contentList[_selectedIndex],
              ),
            );
          },
        );
      },
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'ホーム'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: '検索'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: '設定'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
