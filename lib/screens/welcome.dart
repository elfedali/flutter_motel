import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  final String title = 'Welcome';
  final String subtitle = 'Sign in with email';
  final String email = 'Email';
  final String password = 'Password';
  final String signIn = 'Sign in';
  final String orConnectWith = 'Or connect with';
  final String google = 'Google';
  final String facebook = 'Facebook';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildWelcomeMessage(context),
            _buildLoginForm(context),
            _buildSocialMediaConnect(),
          ],
        ),
      ),
    ));
  }
}

Widget _buildWelcomeMessage(BuildContext context) {
  return Column(
    children: [
      Text("Welcome back!", style: Theme.of(context).textTheme.titleLarge),
      Text("Sign in with email", style: Theme.of(context).textTheme.bodyText1),
    ],
  );
}

Widget _buildLoginForm(BuildContext context) {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/root');
        },
        child: const Text('Sign in'),
      ),
    ],
  );
}

Widget _buildSocialMediaConnect() {
  return Column(
    children: [
      const Text("Or connect with"),
      Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Google'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Facebook'),
          ),
        ],
      ),
    ],
  );
}
