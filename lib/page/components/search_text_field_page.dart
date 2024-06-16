import 'package:flutter/cupertino.dart';

class SearchTextFieldPage extends StatefulWidget {
  const SearchTextFieldPage({super.key, required this.title});

  final String title;

  @override
  State<SearchTextFieldPage> createState() => _SearchTextFieldPageState();
}

class _SearchTextFieldPageState extends State<SearchTextFieldPage> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: CupertinoSearchTextField(
              controller: _controller,
              placeholder: 'Text',
            ),
          ),
        ),
      ),
    );
  }
}
