import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';

class CountryAppBarSliver extends StatelessWidget {
  const CountryAppBarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        return SliverAppBar(
          title: Text(state.title),
        );
      },
    );
  }
}
