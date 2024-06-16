import 'package:flutter/cupertino.dart';

class ActionSheetPage extends StatefulWidget {
  const ActionSheetPage({super.key, required this.title});

  final String title;

  @override
  State<ActionSheetPage> createState() => _ActionSheetPageState();
}

class _ActionSheetPageState extends State<ActionSheetPage> {
  String? _selectedAction;
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
              Text(_selectedAction ?? '-'),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () async {
                  final action = await showCupertinoModalPopup<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return _actionSheet();
                    },
                  );
                  setState(() {
                    _selectedAction = action;
                  });
                },
                child: const Text('Show CupertinoActionSheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _action({required String value, required String label}) {
    return CupertinoActionSheetAction(
      onPressed: () {
        Navigator.pop<String>(context, value);
      },
      child: Text(label),
    );
  }

  Widget _actionSheet() {
    return CupertinoActionSheet(
      title: const Text('CupertinoActionSheet'),
      message: const Text('This is CupertinoActionSheet.'),
      actions: [
        _action(value: 'Action 1', label: 'Action 1'),
        _action(value: 'Action 2', label: 'Action 2'),
        _action(value: 'Action 3', label: 'Action 3'),
      ],
      cancelButton: _action(value: 'Cancel', label: 'Cancel'),
    );
  }
}
