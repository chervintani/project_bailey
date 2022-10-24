import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/counter/bloc/bloc.dart';
import 'package:project_bailey/pages/counter/view/counter_form.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(const CounterState(count: 0)),
      child: const Scaffold(
        body: Center(
          child: CounterForm(),
        ),
      ),
    );
  }
}
