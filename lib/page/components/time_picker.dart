import 'package:cupertino_ui_sample/utils/cupertino_picker_display.dart';
import 'package:flutter/cupertino.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({super.key, required this.title});

  final String title;

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  Duration _value = Duration.zero;
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
              child: const Text('Show CupertinoTimerPicker'),
            ),
          ],
        )),
      ),
    );
  }

  Widget _timePicker() {
    return CupertinoTimerPicker(
      initialTimerDuration: _value,
      onTimerDurationChanged: (Duration value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}
