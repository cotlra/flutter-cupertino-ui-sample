import 'package:cupertino_ui_sample/const/style_consts.dart';
import 'package:flutter/cupertino.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key, required this.title});

  final String title;

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Padding(
          padding: StyleConsts.padding16,
          child: Center(
            child: CupertinoTextField(
              controller: _controller,
              placeholder: 'Text',
            ),
          ),
        ),
      ),
    );
  }
}
