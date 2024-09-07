import 'package:flutter/material.dart';
import 'package:project/homepage.dart';
import 'package:project/introsecond.dart';
import 'package:project/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: SizedBox(
            height: mediaQuery.height,
            width: mediaQuery.width,
            child: Stack(
              children: [
                // Background image
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assest/images/img_20.png',
                    height: mediaQuery.height * 0.35,
                    width: mediaQuery.width,
                    fit: BoxFit.cover,
                  ),
                ),
                // Positioned leaf image
                Positioned(
                  top: 30,
                  left: mediaQuery.width * 0.4,
                  child: Center(
                    child: Image.asset(
                      'assest/images/img_21.png',
                      height: mediaQuery.height * 0.32,
                      width: mediaQuery.width * 0.3,
                    ),
                  ),
                ),
                // Positioned texts
                Positioned(
                  top: mediaQuery.height * 0.4,
                  left: mediaQuery.width * 0.3,
                  child: Image.asset(
                    'assest/images/img_22.png',
                    height: 29,
                    width: 173,
                  ),
                ),
                Positioned(
                  top: mediaQuery.height * 0.44,
                  left: mediaQuery.width * 0.33,
                  child: Image.asset(
                    'assest/images/img_23.png',
                    height: 17,
                    width: 144,
                  ),
                ),
                // Back button
                Positioned(
                  top: mediaQuery.height * 0.02,
                  left: mediaQuery.width * 0.05,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroSecond()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                    ),
                  ),
                ),
                // Form fields
                Positioned(
                  top: mediaQuery.height * 0.5,
                  left: mediaQuery.width * 0.1,
                  right: mediaQuery.width * 0.1,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Username TextField
                        TextFormField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your username',
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        // Password TextField
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Enter your password',
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        // Login Button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff08A562),
                            minimumSize: const Size(50, 50),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, navigate to homepage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Homepage()),
                              );
                            }
                          },
                          child: const Text("Login"),
                        ),
                        const SizedBox(height: 5),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()),
                            );
                          },
                          child: const Text(
                            'Forgot password',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(height: 0),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()),
                            );
                          },
                          child: const Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Signup button
                Positioned(
                  top: mediaQuery.height * 0.82,
                  left: mediaQuery.width * 0.4,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()),
                      );
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
