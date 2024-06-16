import 'package:flutter/cupertino.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key, required this.title});

  final String title;

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                onPressed: () {},
                child: const Text('CupertinoButton'),
              ),
              const SizedBox(height: 16),
              CupertinoButton.filled(
                onPressed: () {},
                child: const Text('CupertinoButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
