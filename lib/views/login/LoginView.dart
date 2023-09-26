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
  final formKey = GlobalKey<FormState>();

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
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                      .hasMatch(value)) {
                                return "Ingresa una dirección de correo valida";
                              } else {
                                return null;
                              }
                            },
                            enabled: state is! LoginLoading,
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
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Ingresa una contraseña";
                              } else {
                                return null;
                              }
                            },
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
                              enabled: state is! LoginLoading,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          (state is LoginLoading)
                              ? const CircularProgressIndicator()
                              : ElevatedButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      context.read<LoginCubit>().login(
                                          _emailcontroller.text,
                                          _passwordController.text);
                                    }
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
