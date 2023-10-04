import 'package:flutter/material.dart';
import 'package:widgets_basic/sign_up/sign_up.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _signIn() {
   
    String email = _emailController.text;
    String password = _passwordController.text;

    
    if (email.isNotEmpty && password.isNotEmpty) {
      
      print("Email: $email");
      print("Password: $password");
    } else {
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill in all fields."),
        ),
      );
    }
  }

  void _navigateToSignUp() {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => SignUpScreen(),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, 
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _signIn,
              child: Text('Sign In'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: _navigateToSignUp,
              child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Text('Sign Up Page'),
      ),
    );
  }
}