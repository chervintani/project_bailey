import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_bailey/pages/login/bloc/bloc.dart';
import 'package:project_bailey/widgets/button.dart';

import '../../../models/text_field_input/text_field_input.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  VoidCallback? _onPressed(BuildContext context, LoginState state) {
    var bloc = context.read<LoginBloc>();
    if (state.email.errorType == ErrorType.none &&
        state.password.errorType == ErrorType.none) {
      return () => bloc.add(LoginButtonPressed());
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SizedBox(
          child: Button(
            text: 'Login',
            onPressed: _onPressed(context, state),
          ),
        );
      },
    );
  }
}
