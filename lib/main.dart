import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_bailey/pages/counter/counter.dart';
import 'package:project_bailey/pages/country/bloc/country_state/country_state.dart';
import 'package:project_bailey/pages/country/country.dart';
import 'package:project_bailey/pages/login/login.dart';
import 'package:project_bailey/pages/todo/view/todo_page.dart';

import 'repositories/repositories.dart';
import 'services/services.dart';

void main() {
  var countryRepository = CountryRepository(countryService: CountryService());
  var authRepository = AuthRepository(authService: AuthService());
  runApp(MyApp(
    countryRepository: countryRepository,
    authRepository: authRepository,
  ));
}

class MyApp extends StatelessWidget {
  final CountryRepository countryRepository;
  final AuthRepository authRepository;

  MyApp({
    super.key,
    required this.countryRepository,
    required this.authRepository,
  });

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: LoginPage.route,
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: '/counter',
        builder: (context, state) {
          return const CounterPage();
        },
      ),
      GoRoute(
        path: CountryPage.route,
        builder: (context, state) {
          return CountryPage(
            countryState: state.extra as CountryState,
          );
        },
      ),
      GoRoute(
        path: TodoPage.route,
        builder: (context, state) {
          return TodoPage();
        },
      ),
    ],
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: countryRepository),
        RepositoryProvider.value(value: authRepository),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
        ),
        routerConfig: _router,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
