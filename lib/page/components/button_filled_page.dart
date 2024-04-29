import 'package:flutter/cupertino.dart';

class ButtonFilledPage extends StatefulWidget {
  const ButtonFilledPage({super.key, required this.title});

  final String title;

  @override
  State<ButtonFilledPage> createState() => _ButtonFilledPageState();
}

class _ButtonFilledPageState extends State<ButtonFilledPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            onPressed: () {},
            child: const Text('Cupertino Button'),
          ),
        ),
      ),
    );
  }
}
