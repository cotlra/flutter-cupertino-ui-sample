import 'package:flutter/cupertino.dart';

class SlidingSegmentedControlPage extends StatefulWidget {
  const SlidingSegmentedControlPage({super.key, required this.title});

  final String title;

  @override
  State<SlidingSegmentedControlPage> createState() =>
      _SlidingSegmentedControlPageState();
}

class _SlidingSegmentedControlPageState
    extends State<SlidingSegmentedControlPage> {
  String? _value = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoSlidingSegmentedControl<String>(
            onValueChanged: (String? value) {
              setState(() {
                _value = value;
              });
            },
            groupValue: _value,
            children: const {
              'Item 1': Text('Item 1'),
              'Item 2': Text('Item 2'),
              'Item 3': Text('Item 3'),
            },
          ),
        ),
      ),
    );
  }
}
