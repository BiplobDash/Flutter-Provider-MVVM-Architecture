import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  FocusNode emailFocusNode = FocusNode();
  FocusNode paswordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.alternate_email),
              ),
              onFieldSubmitted: (value) {
                Utils.feildFocusNode(context, emailFocusNode, paswordFocusNode);
              },
            ),
            ValueListenableBuilder(
              valueListenable: _obsecurePassword,
              builder: (context, value, child) {
                return TextFormField(
                  controller: _passwordController,
                  focusNode: paswordFocusNode,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obsecurePassword.value,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: InkWell(
                      onTap: () {
                        _obsecurePassword.value = !_obsecurePassword.value;
                      },
                      child: Icon(_obsecurePassword.value ? Icons.visibility_off_outlined : Icons.visibility),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
