import 'package:flutter/material.dart';
import 'package:wayes/auth/registration_page.dart';
import 'package:wayes/container/textformfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = 'login-page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    _email.addListener(() {
      final String text = _email.text.toLowerCase();
      _email.value = _email.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });

    _password.addListener(() {
      final String text = _password.text.toLowerCase();
      _password.value = _password.value.copyWith(
          text: text,
          selection:
              TextSelection(baseOffset: text.length, extentOffset: text.length),
          composing: TextRange.empty);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Image.asset('assets/icons/citylocation.jpg'),
            const Text(
              'Hello! Please create account \nto enjoy routes',
              textAlign: TextAlign.center,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: 4000.0, // Adjust the width as needed
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),

                  //Textform field
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //email
                      MyTextFormFiled(
                          hintText: 'Enter e-mail',
                          obscureText: false,
                          controller: _email),
                      const SizedBox(height: 16.0),

                      //password
                      MyTextFormFiled(
                          hintText: 'Create password...',
                          obscureText: true,
                          controller: _password),
                      const SizedBox(height: 16.0),
                      //button
                      SizedBox(
                        width: 400,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor: Colors.purple),
                          onPressed: () {},
                          child: const Text(
                            'Create account',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      //sign up with gmail
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.0, // Adjust the width as needed
                            height: 20.0, // Adjust the height as needed
                            child: ClipOval(
                              child: Image.asset('assets/icons/google.png'),
                            ),
                          ),
                          const SizedBox(
                              width:
                                  10.0), // Add some space between the image and text
                          const Text('Continue with Gmail'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()));
                    },
                    child: const Text('Sign in'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
