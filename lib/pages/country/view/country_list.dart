import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';

class CountryList extends StatelessWidget {
  const CountryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.countries[index].name ?? ""),
              subtitle: Text(state.countries[index].countryCode ?? ""),
            );
          },
          itemCount: state.countries.length,
        );
      },
    );
  }
}
