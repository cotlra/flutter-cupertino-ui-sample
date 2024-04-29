import 'package:flutter/cupertino.dart';

class ActionSheetPage extends StatefulWidget {
  const ActionSheetPage({super.key, required this.title});

  final String title;

  @override
  State<ActionSheetPage> createState() => _ActionSheetPageState();
}

class _ActionSheetPageState extends State<ActionSheetPage> {
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
              String? action = await showCupertinoModalPopup<String>(
                context: context,
                builder: (BuildContext context) {
                  return _actionSheet();
                },
              );
            },
            child: const Text('Cupertino Action Sheet'),
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
      title: const Text('タイトル'),
      message: const Text('メッセージ'),
      actions: [
        _action(value: 'action1', label: 'アクション1'),
        _action(value: 'action2', label: 'アクション2'),
        _action(value: 'action3', label: 'アクション3'),
      ],
      cancelButton: _action(value: 'cancel', label: 'キャンセル'),
    );
  }
}
