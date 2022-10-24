import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';
import 'package:project_bailey/pages/country/view/country_appbar_sliver.dart';

class CountryPage extends StatelessWidget {
  static const route = '/country';
  final CountryState? countryState;

  const CountryPage({super.key, this.countryState});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CountryBloc>(
      create: (context) => CountryBloc(countryState ?? const CountryState()),
      child: const Scaffold(
        body: CustomScrollView(
          slivers: [
            CountryAppBarSliver(),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
