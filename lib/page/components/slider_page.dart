import 'package:flutter/cupertino.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key, required this.title});

  final String title;

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoSlider(
            min: 0,
            max: 100,
            value: _value,
            onChanged: (double value) {
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
