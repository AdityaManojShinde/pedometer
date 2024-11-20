import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pedometer/core/provider/theme_provider.dart';

class ThemeSwitch extends ConsumerWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          themeMode == ThemeMode.dark ? Icons.nightlight : Icons.sunny,
          color: Theme.of(context).iconTheme.color,
        ),
        Switch(
            value: themeMode == ThemeMode.dark,
            onChanged: (value) {
              ref
                  .read(themeModeProvider.notifier)
                  .update((state) => value ? ThemeMode.dark : ThemeMode.light);
            })
      ],
    );
  }
}
