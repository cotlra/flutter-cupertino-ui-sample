import 'package:flutter/cupertino.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key, required this.title});

  final String title;

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoSwitch(
            value: _value,
            onChanged: (bool value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
