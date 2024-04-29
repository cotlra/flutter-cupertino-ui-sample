import 'package:cupertino_ui_sample/const/icon_list.dart';
import 'package:cupertino_ui_sample/const/style_consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage({super.key, required this.title});

  final String title;

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Wrap(
              children: IconList.map.entries
                  .map(
                    (e) => Padding(
                      padding: StyleConsts.padding8,
                      child: Tooltip(
                        message: e.key,
                        child: Icon(
                          e.value,
                          size: StyleConsts.value32,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  // List<Widget> _iconList(){
  //
  // }
}
