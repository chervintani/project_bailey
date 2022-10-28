import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';
import 'package:project_bailey/pages/country/view/country_appbar_sliver.dart';
import 'package:project_bailey/pages/country/view/country_list.dart';
import 'package:project_bailey/pages/login/view/login_page.dart';
import 'package:project_bailey/repositories/country_repository.dart';
// import 'package:go_router/go_router.dart';

import '../../../models/result/result.dart';
import '../../../widgets/loading_dialog.dart';

class CountryPage extends StatelessWidget {
  static const route = '/country';
  final CountryState? countryState;

  const CountryPage({super.key, this.countryState});

  void _listener(BuildContext context, CountryState state) {
    switch (state.fetchCountriesStatus) {
      case RequestStatus.inProgress:
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return LoadingDialog(text: 'Loading countries...');
          },
        );
        break;
      case RequestStatus.success:
        Navigator.pop(context);
        // context.replace(LoginPage.route);
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CountryBloc>(
      create: (context) => CountryBloc(
        countryState: countryState ?? const CountryState(),
        countryRepository: RepositoryProvider.of<CountryRepository>(context),
      )..add(CountryCreated()),
      child: BlocBuilder<CountryBloc, CountryState>(builder: (context, state) {
        void _confirmLogout() {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Confirm'),
                content: const Text('Are you sure you want to logout?'),
                actions: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('No'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('Yes'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }

        return BlocListener<CountryBloc, CountryState>(
          listener: (context, state) => _listener(context, state),
          child: Scaffold(
            appBar: AppBar(
              title: Text(state.title),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(onPressed: _confirmLogout, icon: Icon(Icons.logout)),
              ],
            ),
            body: CountryList(),
          ),
        );
      }),
    );
  }
}
