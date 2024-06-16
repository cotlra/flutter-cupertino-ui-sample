import 'package:flutter/cupertino.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key, required this.title});

  final String title;

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool? _value = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoCheckbox(
            value: _value,
            onChanged: (bool? value) {
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
