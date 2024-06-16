import 'package:cupertino_ui_sample/utils/cupertino_picker_display.dart';
import 'package:flutter/cupertino.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key, required this.title});

  final String title;

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime _value = DateTime.now();
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
            Text(_value.toString()),
            CupertinoButton(
              onPressed: () {
                DisplayCupertinoPicker.showPicker(context, _timePicker());
              },
              child: const Text('Show CupertinoDatePicker'),
            ),
          ],
        )),
      ),
    );
  }

  Widget _timePicker() {
    return CupertinoDatePicker(
      initialDateTime: _value,
      onDateTimeChanged: (DateTime value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}
