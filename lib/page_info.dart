import 'package:cupertino_ui_sample/page/components/action_sheet_page.dart';
import 'package:cupertino_ui_sample/page/components/activity_indicator_page.dart';
import 'package:cupertino_ui_sample/page/components/alert_dialog_page.dart';
import 'package:cupertino_ui_sample/page/components/button_filled_page.dart';
import 'package:cupertino_ui_sample/page/components/button_page.dart';
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
      pageName: 'Action Sheet',
      pageRoute: '/actionSheet',
      page: const ActionSheetPage(title: 'Action Sheet'),
    ),
    PageInfo(
      pageName: 'Activity Indicator',
      pageRoute: '/activityIndicator',
      page: const ActivityIndicatorPage(title: 'Activity Indicator'),
    ),
    PageInfo(
      pageName: 'Alert Dialog',
      pageRoute: '/alertDialog',
      page: const AlertDialogPage(title: 'Alert Dialog'),
    ),
    PageInfo(
      pageName: 'Button',
      pageRoute: '/button',
      page: const ButtonPage(title: 'Button'),
    ),
    PageInfo(
      pageName: 'Button（Filled）',
      pageRoute: '/buttonFilled',
      page: const ButtonFilledPage(title: 'Button（Filled）'),
    ),
    PageInfo(
      pageName: 'Color',
      pageRoute: '/color',
      page: const ColorPage(title: 'Color'),
    ),
    PageInfo(
      pageName: 'Context Menu',
      pageRoute: '/contextMenu',
      page: const ContextMenuPage(title: 'Context Menu'),
    ),
    PageInfo(
      pageName: 'Date Picker',
      pageRoute: '/datePicker',
      page: const DatePickerPage(title: 'Date Picker'),
    ),
    PageInfo(
      pageName: 'Icon',
      pageRoute: '/icon',
      page: const IconPage(title: 'Icon'),
    ),
    PageInfo(
      pageName: 'List Section',
      pageRoute: '/listSection',
      page: const ListSectionPage(title: 'List Section'),
    ),
    PageInfo(
      pageName: 'List Tile',
      pageRoute: '/listTile',
      page: const ListTilePage(title: 'List Tile'),
    ),
    PageInfo(
      pageName: 'Navigation Bar',
      pageRoute: '/navigationBar',
      page: const NavigationBarPage(title: 'Navigation Bar'),
    ),
    PageInfo(
      pageName: 'Picker',
      pageRoute: '/picker',
      page: const PickerPage(title: 'Picker'),
    ),
    PageInfo(
      pageName: 'Scroll Bar',
      pageRoute: '/scrollBar',
      page: const ScrollBarPage(title: 'Scroll Bar'),
    ),
    PageInfo(
      pageName: 'Search Text Field',
      pageRoute: '/searchTextField',
      page: const SearchTextFieldPage(title: 'Search Text Field'),
    ),
    PageInfo(
      pageName: 'Segmented Control',
      pageRoute: '/segmentedControl',
      page: const SegmentedControlPage(title: 'Segmented Control'),
    ),
    PageInfo(
      pageName: 'Slider',
      pageRoute: '/slider',
      page: const SliderPage(title: 'Slider'),
    ),
    PageInfo(
      pageName: 'Sliding Segmented Control',
      pageRoute: '/slidingSegmentedControl',
      page:
          const SlidingSegmentedControlPage(title: 'Sliding Segmented Control'),
    ),
    PageInfo(
      pageName: 'Sliver Navigation Bar',
      pageRoute: '/sliverNavigationBarPage',
      page: const SliverNavigationBarPage(title: 'Sliver Navigation Bar'),
    ),
    PageInfo(
      pageName: 'Switch',
      pageRoute: '/switch',
      page: const SwitchPage(title: 'Switch'),
    ),
    PageInfo(
      pageName: 'Tab Bar',
      pageRoute: '/tabBar',
      page: const TabBarPage(title: 'Tab Bar'),
    ),
    PageInfo(
      pageName: 'Text Field',
      pageRoute: '/textField',
      page: const TextFieldPage(title: 'Text Field'),
    ),
    PageInfo(
      pageName: 'Time Picker',
      pageRoute: '/timePicker',
      page: const TimePickerPage(title: 'Time Picker'),
    ),
  ];

  Map<String, Widget Function(BuildContext)> getRootMap() {
    Map<String, Widget Function(BuildContext)> map = {};
    map.addAll(Map.fromIterables(list.map<String>((e) => e.pageRoute),
        list.map<Widget Function(BuildContext)>((e) => (context) => e.page)));
    return map;
  }
}
