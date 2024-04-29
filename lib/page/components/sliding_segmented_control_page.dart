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
  String? _value = 'Item1';
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
              'Item1': Text('Item1'),
              'Item2': Text('Item2'),
              'Item3': Text('Item3'),
            },
          ),
        ),
      ),
    );
  }
}
