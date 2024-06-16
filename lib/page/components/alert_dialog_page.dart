import 'package:flutter/cupertino.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key, required this.title});

  final String title;

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoButton(
            onPressed: () async {
              String? result = await showCupertinoDialog<String>(
                  context: context,
                  builder: (context) {
                    return _dialog();
                  });
            },
            child: const Text('Show CupertinoAlertDialog'),
          ),
        ),
      ),
    );
  }

  Widget _dialog() {
    return CupertinoAlertDialog(
      title: const Text('CupertinoAlertDialog'),
      content: const Text('This is CupertinoAlertDialog.'),
      actions: [
        _action(value: 'Cancel', label: 'Cancel'),
        _action(value: 'OK', label: 'OK'),
      ],
    );
  }

  Widget _action({required String value, required String label}) {
    return CupertinoDialogAction(
      onPressed: () {
        Navigator.pop(context, value);
      },
      child: Text(label),
    );
  }
}
