import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/login/bloc/bloc.dart';
import 'package:project_bailey/widgets/labeled_textfield.dart';

import '../../../models/text_field_input/text_field_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool hidePassword = true;

  String? _emailError(LoginState state) {
    switch (state.email.errorType) {
      case ErrorType.empty:
        return 'Required';
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SizedBox(
          child: Column(
            children: [
              LabeledTextField(
                label: 'Email',
                onChanged: (value) => bloc.add(LoginEmailChanged(value)),
                inputDecoration: InputDecoration(
                  errorText: _emailError(state),
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: LabeledTextField(
                  label: 'Password',
                  obscureText: hidePassword,
                  onChanged: (value) => bloc.add(LoginPasswordChanged(value)),
                  inputDecoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
