import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:puntada/cubit/login/login_cubit.dart';

import '../../common/Dialogs.dart';
import '../tabbar/TabbarView.dart';

class LoginView extends StatefulWidget {
  static String routeName = "/login";
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginCubit, LoginState>(
          bloc: context.read<LoginCubit>(),
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.pushReplacementNamed(context, TabView.routeName);
            }
            if (state is LoginError) {
              Dialogs.showTopMessage(context, "Correo o contraseña invalidos",
                  TopMessageType.Error);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  SvgPicture.asset('assets/logo.svg',
                      width: 250, semanticsLabel: 'Acme Logo'),
                  Expanded(
                      child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailcontroller,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.email_outlined),
                              border: UnderlineInputBorder(),
                              labelText: 'Correo electrónico',
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: !_passwordVisible,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  icon: Icon(_passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined)),
                              border: const UnderlineInputBorder(),
                              labelText: 'Contraseña',
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                final email = _emailcontroller.text.trim();
                                final password =
                                    _passwordController.text.trim();
                                if (email.isEmpty || password.isEmpty) {
                                  Dialogs.showTopMessage(
                                      context,
                                      "Todos los campos son requeridos",
                                      TopMessageType.Error);
                                  return;
                                }
                                context
                                    .read<LoginCubit>()
                                    .login(email, password);
                              },
                              child: const SizedBox(
                                  width: double.infinity,
                                  child: Center(child: Text("Entrar"))))
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
