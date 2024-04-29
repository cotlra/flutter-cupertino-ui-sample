import 'package:cupertino_ui_sample/const/style_consts.dart';
import 'package:cupertino_ui_sample/utils/cupertino_picker_display.dart';
import 'package:flutter/cupertino.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key, required this.title});

  final String title;

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  int? _value;
  final List<String> _list = ['Sunny', 'Cloudy', 'Rainy'];
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
            Text(_value == null ? '-' : _list[_value!]),
            CupertinoButton(
              onPressed: () {
                DisplayCupertinoPicker.showPicker(context, _picker());
              },
              child: const Text('Cupertino Picker'),
            ),
          ],
        )),
      ),
    );
  }

  Widget _picker() {
    return CupertinoPicker(
      itemExtent: StyleConsts.value32,
      onSelectedItemChanged: (int value) {
        setState(() {
          _value = value;
        });
      },
      children: List.generate(
          _list.length, (index) => Center(child: Text(_list[index]))),
    );
  }
}
