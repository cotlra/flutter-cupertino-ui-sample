import 'package:flutter/cupertino.dart';

class ContextMenuPage extends StatefulWidget {
  const ContextMenuPage({super.key, required this.title});

  final String title;

  @override
  State<ContextMenuPage> createState() => _ContextMenuPageState();
}

class _ContextMenuPageState extends State<ContextMenuPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Center(
          child: CupertinoContextMenu(
            actions: [
              _menu(
                label: 'Copy',
                icon: CupertinoIcons.doc_on_clipboard_fill,
                isDefaultAction: true,
              ),
              _menu(label: 'Share', icon: CupertinoIcons.share),
              _menu(label: 'Favorite', icon: CupertinoIcons.heart),
              _menu(
                label: 'Delete',
                icon: CupertinoIcons.delete,
                isDestructiveAction: true,
              ),
            ],
            child: Icon(CupertinoIcons.app),
          ),
        ),
      ),
    );
  }

  Widget _menu({
    required String label,
    required IconData icon,
    bool isDefaultAction = false,
    bool isDestructiveAction = false,
  }) {
    return CupertinoContextMenuAction(
      onPressed: () {
        Navigator.pop(context);
      },
      isDefaultAction: isDefaultAction,
      isDestructiveAction: isDestructiveAction,
      trailingIcon: icon,
      child: Text(label),
    );
  }
}
