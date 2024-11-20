import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pedometer/core/provider/step_status_provider.dart';
import 'package:pedometer/core/provider/stepcountprovider.dart';
import 'package:pedometer/core/repo/pedometer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepsCount = ref.watch(stepCountProvider);
    // ignore: unused_local_variable
    final stepsStatus = ref.watch(stepsStatusProvider);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Today',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 1,
            width: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: SizedBox(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                        ),
                        child: Center(
                          child: Text(
                            '$stepsCount Steps',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      final pedometer = Pedometer();
                      pedometer.startPedometer(ref);
                      ref
                          .read(stepsStatusProvider.notifier)
                          .update((state) => !stepsStatus);
                    },
                    child: Text(
                      stepsStatus ? 'Stop' : 'Start',
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
