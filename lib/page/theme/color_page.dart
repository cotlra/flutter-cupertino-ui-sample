import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/style_consts.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key, required this.title});

  final String title;

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: StyleConsts.padding16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _labelColors(),
                StyleConsts.sizedBoxH16,
                _systemBackgroundColors(),
                StyleConsts.sizedBoxH16,
                _backgroundGreyColors(),
                StyleConsts.sizedBoxH16,
                _systemFillColors(),
                StyleConsts.sizedBoxH16,
                _systemGroupBackgroundColors(),
                StyleConsts.sizedBoxH16,
                _activeColors(),
                StyleConsts.sizedBoxH16,
                _systemColors(),
                StyleConsts.sizedBoxH16,
                _systemGreyColors(),
                StyleConsts.sizedBoxH16,
                _section(
                  children: [
                    _colorContainer(
                      title: 'Black',
                      backgroungColor: CupertinoColors.black,
                      textColor: CupertinoColors.systemBackground,
                    ),
                    _colorContainer(
                      title: 'White',
                      backgroungColor: CupertinoColors.white,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Link',
                      backgroungColor: CupertinoColors.link,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Placeholder Text',
                      backgroungColor: CupertinoColors.placeholderText,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Separator',
                      backgroungColor: CupertinoColors.separator,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Opaque Separator',
                      backgroungColor: CupertinoColors.opaqueSeparator,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Destructive Red',
                      backgroungColor: CupertinoColors.destructiveRed,
                      textColor: CupertinoColors.label,
                    ),
                  ],
                ),
                StyleConsts.sizedBoxH16,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _labelColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'Label',
          backgroungColor: CupertinoColors.label,
          textColor: CupertinoColors.white,
        ),
        _colorContainer(
          title: 'Secondary Label',
          backgroungColor: CupertinoColors.secondaryLabel,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary Label',
          backgroungColor: CupertinoColors.tertiaryLabel,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Quaternary Label',
          backgroungColor: CupertinoColors.quaternaryLabel,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _systemBackgroundColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'System Background',
          backgroungColor: CupertinoColors.systemBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Secondary System Background',
          backgroungColor: CupertinoColors.secondarySystemBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary System Background',
          backgroungColor: CupertinoColors.tertiarySystemBackground,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _backgroundGreyColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'Extra Light Background Gray',
          backgroungColor: CupertinoColors.extraLightBackgroundGray,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Light Background Gray',
          backgroungColor: CupertinoColors.lightBackgroundGray,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Dark Background Gray',
          backgroungColor: CupertinoColors.darkBackgroundGray,
          textColor: CupertinoColors.white,
        ),
      ],
    );
  }

  _systemFillColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'System Fill',
          backgroungColor: CupertinoColors.systemFill,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Secondary System Fill',
          backgroungColor: CupertinoColors.secondarySystemFill,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary System Fill',
          backgroungColor: CupertinoColors.tertiarySystemFill,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Quaternary System Fill',
          backgroungColor: CupertinoColors.quaternarySystemFill,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _systemGroupBackgroundColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'System Grouped Background',
          backgroungColor: CupertinoColors.systemGroupedBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Secondary System Grouped Background',
          backgroungColor: CupertinoColors.secondarySystemGroupedBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary System Grouped Background',
          backgroungColor: CupertinoColors.tertiarySystemGroupedBackground,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _activeColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'Active Blue',
          backgroungColor: CupertinoColors.activeBlue,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Active Green',
          backgroungColor: CupertinoColors.activeGreen,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Active Orange',
          backgroungColor: CupertinoColors.activeOrange,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Inactive Gray',
          backgroungColor: CupertinoColors.inactiveGray,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _systemColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'System Red',
          backgroungColor: CupertinoColors.systemRed,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Orange',
          backgroungColor: CupertinoColors.systemOrange,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Yellow',
          backgroungColor: CupertinoColors.systemYellow,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Green',
          backgroungColor: CupertinoColors.systemGreen,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Mint',
          backgroungColor: CupertinoColors.systemMint,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Teal',
          backgroungColor: CupertinoColors.systemTeal,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Cyan',
          backgroungColor: CupertinoColors.systemCyan,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Blue',
          backgroungColor: CupertinoColors.systemBlue,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Indigo',
          backgroungColor: CupertinoColors.systemIndigo,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Purple',
          backgroungColor: CupertinoColors.systemPurple,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Pink',
          backgroungColor: CupertinoColors.systemPink,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Brown',
          backgroungColor: CupertinoColors.systemBrown,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _systemGreyColors() {
    return _section(
      children: [
        _colorContainer(
          title: 'System Grey',
          backgroungColor: CupertinoColors.systemGrey,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey2',
          backgroungColor: CupertinoColors.systemGrey2,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey3',
          backgroungColor: CupertinoColors.systemGrey3,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey4',
          backgroungColor: CupertinoColors.systemGrey4,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey5',
          backgroungColor: CupertinoColors.systemGrey5,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey6',
          backgroungColor: CupertinoColors.systemGrey6,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _colorContainer(
      {required String title,
      required Color backgroungColor,
      required Color textColor}) {
    return Container(
      color: backgroungColor,
      alignment: Alignment.centerLeft,
      padding: StyleConsts.padding16,
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget _section({required List<Widget> children}) {
    return ClipRRect(
      borderRadius: StyleConsts.borderRadiusCircle8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
