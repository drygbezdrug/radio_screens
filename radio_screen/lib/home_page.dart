import 'package:flutter/material.dart';
import 'package:radio_screen/ui/radio/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                barrierColor: Colors.transparent,
                context: context,
                builder: (context) => const RadioMenu(),
              ),
              child: const Text('Show Radio'),
            ),
          ],
        ),
      ),
    );
  }
}
