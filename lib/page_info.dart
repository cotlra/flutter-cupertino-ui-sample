import 'package:cupertino_ui_sample/page/components/action_sheet_page.dart';
import 'package:cupertino_ui_sample/page/components/activity_indicator_page.dart';
import 'package:cupertino_ui_sample/page/components/alert_dialog_page.dart';
import 'package:cupertino_ui_sample/page/components/button_page.dart';
import 'package:cupertino_ui_sample/page/components/checkbox_page.dart';
import 'package:cupertino_ui_sample/page/components/context_menu_page.dart';
import 'package:cupertino_ui_sample/page/components/date_picker.dart';
import 'package:cupertino_ui_sample/page/components/list_section_page.dart';
import 'package:cupertino_ui_sample/page/components/list_tile_page.dart';
import 'package:cupertino_ui_sample/page/components/navigation_bar_page.dart';
import 'package:cupertino_ui_sample/page/components/picker_page.dart';
import 'package:cupertino_ui_sample/page/components/scroll_bar_page.dart';
import 'package:cupertino_ui_sample/page/components/search_text_field_page.dart';
import 'package:cupertino_ui_sample/page/components/segmented_control_page.dart';
import 'package:cupertino_ui_sample/page/components/slider_page.dart';
import 'package:cupertino_ui_sample/page/components/sliding_segmented_control_page.dart';
import 'package:cupertino_ui_sample/page/components/switch_page.dart';
import 'package:cupertino_ui_sample/page/components/tab_bar_page.dart';
import 'package:cupertino_ui_sample/page/components/text_field_page.dart';
import 'package:cupertino_ui_sample/page/components/time_picker.dart';
import 'package:cupertino_ui_sample/page/theme/color_page.dart';
import 'package:cupertino_ui_sample/page/theme/icon_page.dart';
import 'package:flutter/cupertino.dart';

import 'page/components/sliver_navigation_bar.dart';

class PageInfo {
  final String pageName;
  final String pageRoute;
  final StatefulWidget page;

  PageInfo({
    required this.pageName,
    required this.pageRoute,
    required this.page,
  });
}

class PageList {
  final list = [
    PageInfo(
      pageName: 'ActionSheet',
      pageRoute: '/actionSheet',
      page: const ActionSheetPage(title: 'ActionSheet'),
    ),
    PageInfo(
      pageName: 'ActivityIndicator',
      pageRoute: '/activityIndicator',
      page: const ActivityIndicatorPage(title: 'ActivityIndicator'),
    ),
    PageInfo(
      pageName: 'AlertDialog',
      pageRoute: '/alertDialog',
      page: const AlertDialogPage(title: 'AlertDialog'),
    ),
    PageInfo(
      pageName: 'Button',
      pageRoute: '/button',
      page: const ButtonPage(title: 'Button'),
    ),
    PageInfo(
      pageName: 'Color',
      pageRoute: '/color',
      page: const ColorPage(title: 'Color'),
    ),
    PageInfo(
      pageName: 'ContextMenu',
      pageRoute: '/contextMenu',
      page: const ContextMenuPage(title: 'ContextMenu'),
    ),
    PageInfo(
      pageName: 'DatePicker',
      pageRoute: '/datePicker',
      page: const DatePickerPage(title: 'DatePicker'),
    ),
    PageInfo(
      pageName: 'Icon',
      pageRoute: '/icon',
      page: const IconPage(title: 'Icon'),
    ),
    PageInfo(
      pageName: 'ListSection',
      pageRoute: '/listSection',
      page: const ListSectionPage(title: 'ListSection'),
    ),
    PageInfo(
      pageName: 'ListTile',
      pageRoute: '/listTile',
      page: const ListTilePage(title: 'ListTile'),
    ),
    PageInfo(
      pageName: 'NavigationBar',
      pageRoute: '/navigationBar',
      page: const NavigationBarPage(title: 'NavigationBar'),
    ),
    PageInfo(
      pageName: 'Picker',
      pageRoute: '/picker',
      page: const PickerPage(title: 'Picker'),
    ),
    PageInfo(
      pageName: 'ScrollBar',
      pageRoute: '/scrollBar',
      page: const ScrollBarPage(title: 'ScrollBar'),
    ),
    PageInfo(
      pageName: 'SearchTextField',
      pageRoute: '/searchTextField',
      page: const SearchTextFieldPage(title: 'SearchTextField'),
    ),
    PageInfo(
      pageName: 'SegmentedControl',
      pageRoute: '/segmentedControl',
      page: const SegmentedControlPage(title: 'SegmentedControl'),
    ),
    PageInfo(
      pageName: 'Slider',
      pageRoute: '/slider',
      page: const SliderPage(title: 'Slider'),
    ),
    PageInfo(
      pageName: 'SlidingSegmentedControl',
      pageRoute: '/slidingSegmentedControl',
      page: const SlidingSegmentedControlPage(title: 'SlidingSegmentedControl'),
    ),
    PageInfo(
      pageName: 'SliverNavigationBar',
      pageRoute: '/sliverNavigationBarPage',
      page: const SliverNavigationBarPage(title: 'SliverNavigationBar'),
    ),
    PageInfo(
      pageName: 'Switch',
      pageRoute: '/switch',
      page: const SwitchPage(title: 'Switch'),
    ),
    PageInfo(
      pageName: 'TabBar',
      pageRoute: '/tabBar',
      page: const TabBarPage(title: 'TabBar'),
    ),
    PageInfo(
      pageName: 'TextField',
      pageRoute: '/textField',
      page: const TextFieldPage(title: 'TextField'),
    ),
    PageInfo(
      pageName: 'TimePicker',
      pageRoute: '/timePicker',
      page: const TimePickerPage(title: 'TimePicker'),
    ),
    PageInfo(
      pageName: 'Checkbox',
      pageRoute: '/checkbox',
      page: const CheckboxPage(title: 'Checkbox'),
    ),
  ];

  PageList() {
    list.sort((a, b) => a.pageName.compareTo(b.pageName));
  }

  Map<String, Widget Function(BuildContext)> getRootMap() {
    Map<String, Widget Function(BuildContext)> map = {};
    map.addAll(Map.fromIterables(list.map<String>((e) => e.pageRoute),
        list.map<Widget Function(BuildContext)>((e) => (context) => e.page)));
    return map;
  }
}
