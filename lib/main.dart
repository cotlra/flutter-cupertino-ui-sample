import 'package:flutter/cupertino.dart';

import 'page/home_page.dart';
import 'page_info.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PageList pageList = PageList();
    final routeMap = pageList.getRootMap();
    routeMap['/'] = (context) => HomePage(
          pageList: pageList,
        );

    return CupertinoApp(
      title: 'Cupertino UI Sample',
      theme: CupertinoThemeData(),
      initialRoute: '/',
      routes: routeMap,
    );
  }
}
