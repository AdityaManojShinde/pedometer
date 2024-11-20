import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pedometer/UI/screens/home_screen.dart';
import 'package:pedometer/UI/screens/reports_screen.dart';
import 'package:pedometer/UI/screens/settings_screen.dart';
import 'package:pedometer/UI/widgets/appbar_title.dart';
import 'package:pedometer/UI/widgets/theme_switch.dart';
import 'package:pedometer/core/provider/bottom_navigation_index_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int navigationIndex = ref.watch(bottomNavigationIndexProvider);

    Widget buildBody(int index) {
      switch (index) {
        case 0:
          return const HomeScreen();
        case 1:
          return const ReportsScreen();
        case 2:
          return const SettingsScreen();
        default:
          return const HomeScreen();
      }
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          ref
              .read(bottomNavigationIndexProvider.notifier)
              .update((state) => index);
        },
        currentIndex: navigationIndex,
        items: const [
          BottomNavigationBarItem(label: 'Today', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Reports',
            icon: Icon(Icons.auto_graph_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          )
        ],
      ),
      appBar: AppBar(
        title: const AppLogotitle(type: AppLogoTitle.row),
        actions: const [
          ThemeSwitch(),
        ],
      ),
      body: buildBody(navigationIndex),
    );
  }
}
