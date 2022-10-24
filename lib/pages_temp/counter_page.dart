import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CounterPageTemp extends StatefulWidget {
  final String title;
  const CounterPageTemp({super.key, this.title = "Counter"});

  @override
  State<CounterPageTemp> createState() => _CounterPageTempState();
}

class _CounterPageTempState extends State<CounterPageTemp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text('Press me'),
            ),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.abc_rounded),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
