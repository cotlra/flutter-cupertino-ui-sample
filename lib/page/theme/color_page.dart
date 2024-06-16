import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _labelColors(),
                const SizedBox(height: 16),
                _systemBackgroundColors(),
                const SizedBox(height: 16),
                _backgroundGreyColors(),
                const SizedBox(height: 16),
                _systemFillColors(),
                const SizedBox(height: 16),
                _systemGroupBackgroundColors(),
                const SizedBox(height: 16),
                _activeColors(),
                const SizedBox(height: 16),
                _systemColors(),
                const SizedBox(height: 16),
                _systemGreyColors(),
                const SizedBox(height: 16),
                _section(
                  children: [
                    _colorContainer(
                      title: 'Black',
                      backgroundColor: CupertinoColors.black,
                      textColor: CupertinoColors.systemBackground,
                    ),
                    _colorContainer(
                      title: 'White',
                      backgroundColor: CupertinoColors.white,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Link',
                      backgroundColor: CupertinoColors.link,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Placeholder Text',
                      backgroundColor: CupertinoColors.placeholderText,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Separator',
                      backgroundColor: CupertinoColors.separator,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Opaque Separator',
                      backgroundColor: CupertinoColors.opaqueSeparator,
                      textColor: CupertinoColors.label,
                    ),
                    _colorContainer(
                      title: 'Destructive Red',
                      backgroundColor: CupertinoColors.destructiveRed,
                      textColor: CupertinoColors.label,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
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
          backgroundColor: CupertinoColors.label,
          textColor: CupertinoColors.white,
        ),
        _colorContainer(
          title: 'Secondary Label',
          backgroundColor: CupertinoColors.secondaryLabel,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary Label',
          backgroundColor: CupertinoColors.tertiaryLabel,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Quaternary Label',
          backgroundColor: CupertinoColors.quaternaryLabel,
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
          backgroundColor: CupertinoColors.systemBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Secondary System Background',
          backgroundColor: CupertinoColors.secondarySystemBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary System Background',
          backgroundColor: CupertinoColors.tertiarySystemBackground,
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
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Light Background Gray',
          backgroundColor: CupertinoColors.lightBackgroundGray,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Dark Background Gray',
          backgroundColor: CupertinoColors.darkBackgroundGray,
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
          backgroundColor: CupertinoColors.systemFill,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Secondary System Fill',
          backgroundColor: CupertinoColors.secondarySystemFill,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary System Fill',
          backgroundColor: CupertinoColors.tertiarySystemFill,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Quaternary System Fill',
          backgroundColor: CupertinoColors.quaternarySystemFill,
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
          backgroundColor: CupertinoColors.systemGroupedBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Secondary System Grouped Background',
          backgroundColor: CupertinoColors.secondarySystemGroupedBackground,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Tertiary System Grouped Background',
          backgroundColor: CupertinoColors.tertiarySystemGroupedBackground,
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
          backgroundColor: CupertinoColors.activeBlue,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Active Green',
          backgroundColor: CupertinoColors.activeGreen,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Active Orange',
          backgroundColor: CupertinoColors.activeOrange,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'Inactive Gray',
          backgroundColor: CupertinoColors.inactiveGray,
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
          backgroundColor: CupertinoColors.systemRed,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Orange',
          backgroundColor: CupertinoColors.systemOrange,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Yellow',
          backgroundColor: CupertinoColors.systemYellow,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Green',
          backgroundColor: CupertinoColors.systemGreen,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Mint',
          backgroundColor: CupertinoColors.systemMint,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Teal',
          backgroundColor: CupertinoColors.systemTeal,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Cyan',
          backgroundColor: CupertinoColors.systemCyan,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Blue',
          backgroundColor: CupertinoColors.systemBlue,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Indigo',
          backgroundColor: CupertinoColors.systemIndigo,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Purple',
          backgroundColor: CupertinoColors.systemPurple,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Pink',
          backgroundColor: CupertinoColors.systemPink,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Brown',
          backgroundColor: CupertinoColors.systemBrown,
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
          backgroundColor: CupertinoColors.systemGrey,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey2',
          backgroundColor: CupertinoColors.systemGrey2,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey3',
          backgroundColor: CupertinoColors.systemGrey3,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey4',
          backgroundColor: CupertinoColors.systemGrey4,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey5',
          backgroundColor: CupertinoColors.systemGrey5,
          textColor: CupertinoColors.label,
        ),
        _colorContainer(
          title: 'System Grey6',
          backgroundColor: CupertinoColors.systemGrey6,
          textColor: CupertinoColors.label,
        ),
      ],
    );
  }

  Widget _colorContainer(
      {required String title,
      required Color backgroundColor,
      required Color textColor}) {
    return Container(
      color: backgroundColor,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget _section({required List<Widget> children}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
