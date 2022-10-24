import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/counter/bloc/bloc.dart';

class CounterForm extends StatelessWidget {
  const CounterForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<CounterBloc>();
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.count.toString()),
            ElevatedButton(
              onPressed: () => bloc.add(CounterIncrementPressed('pressed')),
              child: Text('Press Me'),
            ),
          ],
        );
      },
    );
  }
}
