import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pedometer/core/provider/theme_provider.dart';
import 'package:pedometer/data/routes/routes.dart';
import 'package:pedometer/data/theme/themes.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final theme = AppTheme();
    return MaterialApp.router(
      title: 'Pedometer',
      routerConfig: routes,
      debugShowCheckedModeBanner: false,
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      themeMode: themeMode,
    );
  }
}
