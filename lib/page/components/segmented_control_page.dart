import 'package:cupertino_ui_sample/const/style_consts.dart';
import 'package:flutter/cupertino.dart';

class SegmentedControlPage extends StatefulWidget {
  const SegmentedControlPage({super.key, required this.title});

  final String title;

  @override
  State<SegmentedControlPage> createState() => _SegmentedControlPageState();
}

class _SegmentedControlPageState extends State<SegmentedControlPage> {
  String? _value = 'Item1';
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoSegmentedControl<String>(
            onValueChanged: (String? value) {
              setState(() {
                _value = value;
              });
            },
            groupValue: _value,
            children: const {
              'Item1': Padding(
                padding: StyleConsts.padding8,
                child: Text('Item1'),
              ),
              'Item2': Padding(
                padding: StyleConsts.padding8,
                child: Text('Item2'),
              ),
              'Item3': Padding(
                padding: StyleConsts.padding8,
                child: Text('Item3'),
              ),
            },
          ),
        ),
      ),
    );
  }
}
